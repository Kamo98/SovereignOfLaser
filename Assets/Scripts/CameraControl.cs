using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour {

	// Парметры для движения камеры вверх
	public Vector2 directionForUp;
	public float accelerationForUp;
	public float speedForUp;

	public float accelerationForBrake;
	public float accelUpForBrake;

	// Текущие параметры движения камеры
	private Vector2 currentDirection;
	private float currentAcceleration;
	private float currentMaxSpeed;
	private float currentCoefForAccel;
	private float kForAccel;		//Коэффициент для ускорения
	
	private Transform[] labelsForCamera;
	private labelForCameraScript[] labelForCameraScripts;
	private int indexForLabels;

	private const float EPS_V = 0.2f;

	private GameController gameController;
	private Camera camera;

	public float standartAspectRatio;


	private enum TYPE_OF_MOVE
	{
		ACCEL_UP,			//Движение с ускорением вверх
		ACCEL_DOWN,			//Движение с ускорением вниз
		UP_NO_ACCEL,        //Движение без ускорение вверх
		DOWN_NO_ACCEL,		//Движение без ускорение вниз
		BRAKE,				//Торможение
		BRAKE_FOR_UP		//Торможение при движении вврех
	}
	
	private TYPE_OF_MOVE typeOfMove;

	private Rigidbody2D rigidBody;

	private void Awake()
	{
		Debug.Log("Awake Camera Control");
		rigidBody = GetComponent<Rigidbody2D>();        // Найти rigidBody
		gameController = GetComponent<GameController>();

		camera = GetComponent<Camera>();

		// найти все метки для движения камеры
		Transform parentLabels = GameObject.Find("LabelsForCamera").transform;
		labelsForCamera = new Transform[parentLabels.childCount];
		labelForCameraScripts = new labelForCameraScript[parentLabels.childCount];
		int i = 0;
		foreach (Transform t in parentLabels)
			labelsForCamera[i++] = t;

		// Сортируем метки по Y
		Array.Sort(labelsForCamera, new TransformComparer());

		i = 0;
		foreach (Transform t in labelsForCamera)
			labelForCameraScripts[i++] = t.GetComponent<labelForCameraScript>();


		init();
	}

	// Use this for initialization
	void Start () {
		Debug.Log("Start Camera Control");
		typeOfMove = TYPE_OF_MOVE.ACCEL_DOWN;
		kForAccel = 1.0f;

		StartCoroutine(CheckForGameOver());
		
		//Фиксация ширины и подстройка высоты
		float ratio = Screen.height / (float)Screen.width;
		camera.orthographicSize *= ratio / standartAspectRatio;
		Debug.Log(ratio / standartAspectRatio);

	}
	

	//Таймер для проверки того, скоро ли наступит проигрыш
	IEnumerator CheckForGameOver()
	{
		while (true)
		{
			if ((typeOfMove == TYPE_OF_MOVE.ACCEL_DOWN || typeOfMove == TYPE_OF_MOVE.DOWN_NO_ACCEL || typeOfMove == TYPE_OF_MOVE.BRAKE) 
				&& !gameController.is_game_over() && soon_game_over())
			{
				Debug.Log("soon_game_over");
				Vibration.Vibrate(350);
			}
			yield return new WaitForSeconds(0.4f);
		}
	}


	private void Update()
	{
		switch (typeOfMove)
		{
			case TYPE_OF_MOVE.ACCEL_DOWN:
				if (-rigidBody.velocity.y > currentMaxSpeed * kForAccel)     //Макс скорость превышена
				{
					typeOfMove = TYPE_OF_MOVE.DOWN_NO_ACCEL;     // поэтому нужна перестать прикладывать силу
				}
			break;
			case TYPE_OF_MOVE.ACCEL_UP:
				if (rigidBody.velocity.y > speedForUp)
				{    //Макс скорость превышена
					typeOfMove = TYPE_OF_MOVE.UP_NO_ACCEL;     // поэтому нужна перестать прикладывать силу
				}
			break;
			case TYPE_OF_MOVE.DOWN_NO_ACCEL:
				if (-rigidBody.velocity.y < currentMaxSpeed * kForAccel)     //Нужно ускоряться
					typeOfMove = TYPE_OF_MOVE.ACCEL_DOWN;
				else if (-rigidBody.velocity.y > currentMaxSpeed * kForAccel + EPS_V)
					typeOfMove = TYPE_OF_MOVE.BRAKE;		// слишком разогнались, надо тормозить

			break;
			case TYPE_OF_MOVE.UP_NO_ACCEL:
				if (rigidBody.velocity.y < speedForUp)     //Нужно ускоряться
					typeOfMove = TYPE_OF_MOVE.ACCEL_UP;
			break;
			case TYPE_OF_MOVE.BRAKE:
				//Debug.Log("BREAK: " + (-rigidBody.velocity.y) + "  <  " + currentMaxSpeed);
				if (-rigidBody.velocity.y < currentMaxSpeed)		//Замедления достаточно
				{
					rigidBody.velocity = new Vector2(0f, 0f);       //Костыль для полной остановки
					typeOfMove = TYPE_OF_MOVE.DOWN_NO_ACCEL;
				}
					
			break;
			case TYPE_OF_MOVE.BRAKE_FOR_UP:         //Остановка только по оси Y
				if (rigidBody.velocity.y <= 0.0)		//Полнсотью остановились
				{ 
					rigidBody.velocity = new Vector2(0f, 0f);		//Костыль для полной остановки
					typeOfMove = TYPE_OF_MOVE.ACCEL_DOWN;
					init();
				}
			break;
		}

		// Если движемся вниз
		if (typeOfMove == TYPE_OF_MOVE.ACCEL_DOWN || typeOfMove == TYPE_OF_MOVE.DOWN_NO_ACCEL || typeOfMove == TYPE_OF_MOVE.BRAKE)
		{
			if (is_game_over())
			{
				if (!gameController.is_game_over())
				{
					//Сообщить контроллеру о провале уровня
					gameController.game_over();
					Debug.Log("GAME OVER");
				}
			}
			else
			{
				if (is_need_acceleration())
				{
					kForAccel = currentCoefForAccel;
					//Debug.Log("is_need_acceleration");
				}
				else
				{
					kForAccel = 1.0f;
					//Debug.Log("is_NOT_need_acceleration");
				}
			}
		}

	}

	// Update is called once per frame
	void FixedUpdate()
	{
		switch (typeOfMove)
		{
			case TYPE_OF_MOVE.ACCEL_DOWN:
				rigidBody.AddForce(currentDirection.normalized * currentAcceleration * kForAccel);
				break;
			case TYPE_OF_MOVE.ACCEL_UP:
				rigidBody.AddForce(directionForUp.normalized * accelerationForUp);
				break;
			case TYPE_OF_MOVE.BRAKE:
				rigidBody.AddForce((currentDirection * (-1)).normalized * accelerationForBrake);
				break;
			case TYPE_OF_MOVE.BRAKE_FOR_UP:
				rigidBody.AddForce((directionForUp * (-1)).normalized * accelUpForBrake);
				break;
		}


		if (typeOfMove == TYPE_OF_MOVE.DOWN_NO_ACCEL || typeOfMove == TYPE_OF_MOVE.ACCEL_DOWN)
		{
			// Проверяем, не нужно ли перейти к следующей метки для камеры (по оси Y)
			if (transform.position.y <= labelsForCamera[indexForLabels].position.y)
				next_label();
		}


		if (typeOfMove == TYPE_OF_MOVE.ACCEL_UP || typeOfMove == TYPE_OF_MOVE.UP_NO_ACCEL)
		{
			// Проверяем, не дошли ли мы до источника текущего лазера
			if (transform.position.y + camera.orthographicSize > gameController.get_position_sourceL().y + camera.orthographicSize * 0.2f)
			{
				typeOfMove = TYPE_OF_MOVE.BRAKE_FOR_UP;
			}
		}
	}


	private void init ()
	{
		indexForLabels = -1;
		next_label();
	}

	// Переход к следующей метки для движения камеры
	private void next_label ()
	{
		indexForLabels++;
		if (indexForLabels >= labelsForCamera.Length)
		{
			indexForLabels--;
			return;
		}

		int iterOfLaser = gameController.get_iterator_of_lasers();
		currentAcceleration = labelForCameraScripts[indexForLabels].accelerationNormal[iterOfLaser];
		currentDirection = labelForCameraScripts[indexForLabels].directionNormal[iterOfLaser];
		currentMaxSpeed = labelForCameraScripts[indexForLabels].maxSpeedNormal[iterOfLaser];
		currentCoefForAccel = labelForCameraScripts[indexForLabels].coefForAccel[iterOfLaser];
	}



	// Проверяет, скоро ли наступит поражение (вызывается редко)
	private bool soon_game_over()
	{
		Transform[] enhanceVertexes = gameController.get_enhance_vertexes();
		if (enhanceVertexes.Length == 0)
			return true;

		bool soonGameOver = true;
		foreach (Transform vert in enhanceVertexes)
		{
			if (vert.position.y <= transform.position.y + 0.5 * camera.orthographicSize)
			{
				soonGameOver = false;
				break;
			}
		}
		return soonGameOver;
	}



	// Проверяет, не все ли текущие доступные вершины выше камеры
	private bool is_game_over ()
	{
		Transform[] enhanceVertexes = gameController.get_enhance_vertexes();
		if (enhanceVertexes.Length == 0)
			return true;

		bool isGameOver = true;
		foreach (Transform vert in enhanceVertexes)
		{
			if (vert.position.y <= transform.position.y + camera.orthographicSize)
			{
				isGameOver = false;
				break;
			}
		}
		return isGameOver;
	}

	// Проверяет, нужно ли ускориться, чтобы догнать игрока
	private bool is_need_acceleration()
	{
		Transform[] enhanceVertexes = gameController.get_enhance_vertexes();
		if (enhanceVertexes.Length == 0)
			return false;

		bool isNeedAcceleration = true;
		Vector3 cameraPos = camera.transform.position;
		foreach (Transform vert in enhanceVertexes)
		{
			if (vert.position.y <= cameraPos.y + camera.orthographicSize 
				&& vert.position.y >= cameraPos.y - 0.85 * camera.orthographicSize 
				&& vert.position.y <= gameController.get_current_vertex().position.y)
			{
				isNeedAcceleration = false;
				break;
			}
		}
		return isNeedAcceleration;
	}


	public Vector2 get_velocity()
	{
		return rigidBody.velocity;
	}

	public void move_up()
	{
		typeOfMove = TYPE_OF_MOVE.ACCEL_UP;
	}


	public void full_break()
	{
		rigidBody.simulated = false;
	}

	public void resume_move ()
	{
		rigidBody.simulated = true;
	}
}
