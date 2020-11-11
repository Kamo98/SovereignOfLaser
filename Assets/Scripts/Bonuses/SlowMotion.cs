using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum TYPE_OF_SLOW
{
	TYPE1,
	TYPE2,
	TYPE3
}

public class SlowMotion : MonoBehaviour {

	public TYPE_OF_SLOW typeOfSlow;

	private CameraControl cameraControl;
	private Animator animatorBtn;				//Аниматор кнопки
	private bool isRun = false;         //Запущен ли бонус в данный момент

	private float forceOfSlow;          //Сила замедления (во сколько раз замедлить)
	private float timeOfSlow;			//Продолжительность времени замедления

	private float timer;

	private void Awake()
	{
		cameraControl = Camera.main.GetComponent<CameraControl>();
		animatorBtn = gameObject.GetComponent<Animator>();

		//Указываем параметры в зависимости от типа (параметры берутся из облака)
		switch (typeOfSlow)
        {
			case TYPE_OF_SLOW.TYPE1:
				forceOfSlow = 2;
				timeOfSlow = 5;
				break;
			case TYPE_OF_SLOW.TYPE2:
				forceOfSlow = 2;
				timeOfSlow = 10;
				break;
			case TYPE_OF_SLOW.TYPE3:
				forceOfSlow = 3;
				timeOfSlow = 2;
				break;
		}
	}


	// Update is called once per frame
	void Update () {
		if (isRun)
        {
			timer -= Time.deltaTime;
			if (timer <= 0.0)		//Время бонуса истекло, значит останавливаем
				stop_bonus();
		}
	}

	private void stop_bonus()
    {
		isRun = false;
		animatorBtn.SetBool("isSlow", false);
		cameraControl.stop_slow_down();
	}

	//Запустить бонус
	private void run_bonus()
	{
		if (!isRun)
		{
			isRun = true;

			//Инициализировать таймер
			timer = timeOfSlow;

			//Запустить анимацию кнопки			
			animatorBtn.SetBool("isSlow", true);
			cameraControl.slow_down(forceOfSlow);
		}
	}


	//Активация бонуса по касанию
	public void OnMouseDown()
	{
		run_bonus();
		Vibration.Vibrate(40);
	}
}
