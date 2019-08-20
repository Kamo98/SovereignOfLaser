using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

// Объект, управляющий игрой
public class GameController : MonoBehaviour {

	private GraphBuilder graphBuilder;      //Ссылка на построитель графов
	private List<Transform>[] pathOfLasers; //Пути лазеров
	private Transform[] enhanceVertexes;    //Выделенные в текущий момент вершины
	private Dictionary<Transform, bool> isFreeVertex;   //Свободна ли вершина
	private Transform currentVertex;        //Текущая вершина

	private COLOR_OF_VERTEX iteratorOfLaser;            //Итератор для лазеров

	public Transform[] sourceOfLasers;      //Список источнков лазеров
	public Transform[] targetOfLasers;      //Список приёмников лазеров
	public GameObject Laser;                //Префаб лазера
	public Text scoreText;

	public int maxScore;

	public GameObject lostCanvas;       //Префаб окна проигрыша
	public GameObject pauseCanvas;      //Префаб окна паузы
	public GameObject levelCompleteCanvas;	//Префаб окна после прохождения уровня
	private GameObject pausePanelObj;	//Окно паузы

	//Для звуков
	public GameObject soundVertexError;
	private AudioSource vertexErrorAudio;
	public GameObject soundGameOver;
	private AudioSource gameOverAudio;

	private bool gameOver;
	private bool levelComplete;
	private bool pause;

	private Dictionary<Transform, int> dictOfTargets;       //Приёмник лазера -> номер лазера (для идентификации приёмников)

	private CameraControl cameraControl;

	private int score;

	private void Awake()
	{
		Debug.Log("Awake Game Controller");
		Time.timeScale = 1;
		cameraControl = GetComponent<CameraControl>();
		vertexErrorAudio = soundVertexError.GetComponent<AudioSource>();
		gameOverAudio = soundGameOver.GetComponent<AudioSource>();
	}

	// Use this for initialization
	void Start() {

		Debug.Log("Start Game Controller");
		GameObject vertexes = GameObject.Find("Vertexes");      //Получаем объект со всеми вершинами
		graphBuilder = vertexes.GetComponent<GraphBuilder>();

		// Изначально все вершины незанятые
		Transform[] listOfVertexes = graphBuilder.get_list_of_vertex();
		isFreeVertex = new Dictionary<Transform, bool>();
		foreach (Transform vert in listOfVertexes)
			isFreeVertex[vert] = true;


		// Создать списки для хранения путей лазеров и инициализировать пути
		pathOfLasers = new List<Transform>[sourceOfLasers.Length];
		for (int i = 0; i < pathOfLasers.Length; i++)
		{
			pathOfLasers[i] = new List<Transform>();
			pathOfLasers[i].Add(sourceOfLasers[i].transform);
			isFreeVertex[sourceOfLasers[i]] = false;
		}

		// Инициализация приёмников
		dictOfTargets = new Dictionary<Transform, int>();
		for (int i = 0; i < targetOfLasers.Length; i++)
			dictOfTargets[targetOfLasers[i]] = i;

		// Игрок начинает строить лазер с первого в списке
		iteratorOfLaser = 0;

		change_current_vertex();
		gameOver = false;
		
		currentVertex.GetComponent<VertexDopScript>().animate_select_vertex();
	}


	private void Update()
	{
		if (Application.platform == RuntimePlatform.Android)
			if (Input.GetKey(KeyCode.Home) || Input.GetKey(KeyCode.Menu))
			{
				Debug.Log("KeyUp Home or Menu");
				pause_game();
			}
	}


	// Добавление новой вершины в текущий путь
	public void add_new_vertex(Transform vertex)
	{
		if (!gameOver && !levelComplete && !pause)
		{
			// Добавляем новую вершину в путь, если она свободна
			if (isFreeVertex[vertex])
			{
				if (graphBuilder.is_related_vertex(currentVertex, vertex))      // и смежна с текущей
				{
					bool isNeedLaser = true;            //Нужно ли рисовать лазер
					bool isNeedChangeLaser = false;     //Нужна ли смена лазера

					// Если выбранная вершина - целевая
					if (vertex.tag == "TargetOfLaser")
					{
						if (dictOfTargets[vertex] == (int)iteratorOfLaser)   //цель для текущего лазера?
							isNeedChangeLaser = true;
						else
						{
							isNeedLaser = false;
						}
					}

					if (isNeedLaser)
					{
						pathOfLasers[(int)iteratorOfLaser].Add(vertex);  //Добавляем вершину в путь
						isFreeVertex[vertex] = false;               //Помечаем как занятую

						instantiate_laser(currentVertex, vertex, iteratorOfLaser, true, 0, false);      //Создать лазер со стандартной скоростью


						// Оповещаем вершину о начале движения лазера к ней
						if (!isNeedChangeLaser)
						{
							//Запуск анимации вершины
							VertexScript vertexScript = vertex.GetComponent<VertexScript>();
							vertexScript.change_color(iteratorOfLaser);
							vertexScript.play_simple_click();
							//Вибрация
							Vibration.Vibrate(20);
						}
						else
						{
							VertexDopScript vertexDopScript = vertex.GetComponent<VertexDopScript>();
							vertexDopScript.play_simple_click();
							vertexDopScript.hit_true_laser();
							//Вибрация при попадании в приёмник
							Vibration.Vibrate(100);
						}

						unselected_related_vertexes();      //Снимаем выделение со старых смежных вершин
					}

					if (isNeedChangeLaser)
						next_laser();
					else if (isNeedLaser)
						change_current_vertex();
				}
				else
				{
					instantiate_laser(currentVertex, vertex, iteratorOfLaser, false, 0.05f, true);     //Создать лазер
					Debug.Log("Вершина " + vertex.name + " недоступна");
					vertexErrorAudio.Play();
				}
			}
			else
			{
				if (!graphBuilder.is_related_vertex(currentVertex, vertex))
					instantiate_laser(currentVertex, vertex, iteratorOfLaser, false, 0.05f, true);     //Создать лазер
				Debug.Log("Вершина " + vertex.name + " занята");
				vertexErrorAudio.Play();
			}
		}
	}



	// Возвращает позицию текущего источника лазера
	public Vector2 get_position_sourceL()
	{
		return sourceOfLasers[(int)iteratorOfLaser].position;
	}

	//Возвращает номер текущего лазера
	public int get_iterator_of_lasers()
	{
		return (int)iteratorOfLaser;
	}

	// Возвращает все смежные на текущий момент вершины
	public Transform[] get_enhance_vertexes ()
	{
		return enhanceVertexes;
	}

	// Возвращает текущую вершину
	public Transform get_current_vertex ()
	{
		return currentVertex;
	}


	// Меняет текущую вершину на последнюю в текущем пути
	private void change_current_vertex ()
	{
		currentVertex = pathOfLasers[(int)iteratorOfLaser][pathOfLasers[(int)iteratorOfLaser].Count - 1];
		graphBuilder.rebuild_for_vertex(currentVertex, iteratorOfLaser);
		selected_related_vertexes();
	}


	// Снимает выделение со смежных с текущей вершин
	private void unselected_related_vertexes()
	{
		// При необходимости снимаем выделение с прежних смежных вершин
		if (enhanceVertexes != null)
		{
			foreach (Transform vertex in enhanceVertexes)
				if (isFreeVertex[vertex])
					unselect_vertex(vertex);
		}
	}

	// Выделяет смежные с текущей вершины в текущем пути
	private void selected_related_vertexes()
	{
		// Получить все смежные с текущей вершины
		enhanceVertexes = graphBuilder.get_related_vertex(currentVertex);
		List<Transform> tmp = new List<Transform>();
		foreach (Transform vertex in enhanceVertexes)
			if (vertex.tag == "TargetOfLaser")
			{      //вершина целевая для текущего лазера
				if (dictOfTargets[vertex] == (int)iteratorOfLaser)
				{
					select_vertex(vertex);
					tmp.Add(vertex);
				}
			}
			else if (isFreeVertex[vertex])
			{       // Вершина свободна, но не целевая
				select_vertex(vertex);
				tmp.Add(vertex);
			}
		enhanceVertexes = tmp.ToArray();
	}


	// Смена лазера либо окончание уровня
	private void next_laser()
	{
		// Текущий лазер последний на уровне
		if ((int)iteratorOfLaser == targetOfLasers.Length - 1)
		{
			Debug.Log("Уровень завершён");
			level_complete();
		} else
		{
			// Игрок начинает строить лазер со следующего в списке
			iteratorOfLaser++;

			//Выключить анимацию предыдущего источника
			sourceOfLasers[(int)iteratorOfLaser - 1].GetComponent<VertexDopScript>().deanimate_select_vertex();
			//Включить анимацию текущего источника
			sourceOfLasers[(int)iteratorOfLaser].GetComponent<VertexDopScript>().animate_select_vertex();

			// Смена текущей вершины
			change_current_vertex();

			// Камера уезжает вверх
			cameraControl.move_up();
		}
	}


	private void instantiate_laser (Transform from, Transform to, COLOR_OF_VERTEX color, bool isLongLaser, float speed, bool needSpeed)
	{
		GameObject laser = Instantiate(Laser);      //Создаем объект лазера из префаба
		Laser laserScript = laser.GetComponent<Laser>();        //Получаем скрипт лазера
		if (needSpeed)
			laserScript.speed = speed;
		laserScript.init_laser(from, to, isLongLaser, color);    //Инициализируем лазерный луч
	}


	public bool is_game_over () { return gameOver; }
	public bool is_level_complete () { return levelComplete; }
	public bool is_pause () { return pause; }
	public int get_score () { return score; }
	public int get_max_score() { return maxScore; }



	private void select_vertex(Transform vertex)
	{
		if (vertex.tag == "SorceOfLasers" || vertex.tag == "TargetOfLaser")
		{
			VertexDopScript vertexScript = vertex.GetComponent<VertexDopScript>();
			vertexScript.animate_select_vertex();
		}
		else
		{
			VertexScript vertexScript = vertex.GetComponent<VertexScript>();
			vertexScript.animate_select_vertex();
		}
	}

	private void unselect_vertex(Transform vertex)
	{
		if (vertex.tag == "SorceOfLasers" || vertex.tag == "TargetOfLaser")
		{
			VertexDopScript vertexScript = vertex.GetComponent<VertexDopScript>();
			vertexScript.deanimate_select_vertex();
		}
		else
		{
			VertexScript vertexScript = vertex.GetComponent<VertexScript>();
			vertexScript.deanimate_select_vertex();
		}
	}


	public void add_to_score (int count)
	{
		score += count;
		scoreText.text = score.ToString();
	}



	private void level_complete ()
	{
		levelComplete = true;
		GameObject levelCompleteObj = Instantiate(levelCompleteCanvas);
		levelCompleteObj.GetComponent<Canvas>().worldCamera = Camera.main;
		cameraControl.full_break();
	}


	public void move_to_next_level ()
	{
		string nameOfNextLevel = LevelsManager.nextLevels[SceneManager.GetActiveScene().name];
		if (nameOfNextLevel != null)
			SceneManager.LoadScene(nameOfNextLevel);
	}

	public void game_over()
	{
		gameOver = true;
		gameOverAudio.Play();
		//lostCanvas.gameObject.SetActive(true);
		GameObject lostCanvasObj = Instantiate(lostCanvas);
		lostCanvasObj.GetComponent<Canvas>().worldCamera = Camera.main;
		cameraControl.full_break();
	}

	// Пауза игры
	public void pause_game ()
	{
		if (!pause && !gameOver && !levelComplete)
		{
			pause = true;
			pausePanelObj = Instantiate(pauseCanvas);
			pausePanelObj.GetComponent<Canvas>().worldCamera = Camera.main;
		}
	}

	public void pause_game_for_hint ()
	{
		pause = true;
		cameraControl.full_break();
	}

	public void resume_game_for_hint()
	{
		Debug.Log("resume_game_for_hint");
		pause = false;
		cameraControl.resume_move();
	}

	// Продолжение игры
	public void resume_game()
	{
		Debug.Log("resume_game");
		pause = false;
		pausePanelObj.GetComponent<Animator>().SetBool("Pause", false);
	}

	private void log_dcitionary<Tkey, Tval>(Dictionary<Tkey, Tval> dict)
	{
		foreach (KeyValuePair<Tkey, Tval> pr in dict)
			Debug.Log(pr.Key + " : " + pr.Value);
	}
}
