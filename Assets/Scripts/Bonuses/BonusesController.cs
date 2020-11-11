using System.Collections;
using System.Collections.Generic;
using System.Runtime.Remoting;
using UnityEngine;


//Покупка бонусов, доабвление их кнопок на экран и отслеживание за их количеством
public class BonusesController : MonoBehaviour {

	public GameObject[] bonuses;			//Префабы бонусов

	private Transform[] bonusBtnPlaces;     //Места для размещения кнопок бонусов
	private int currentPlace = 0;			//Индекс текущего места

    private GameController gameController;


	private void Awake()
    {
		//Находим все места для размещения кнопок бонусов 
		bonusBtnPlaces = new Transform[transform.childCount];
		int i = 0;
		foreach (Transform t in transform)		//и помещаем их в масссив
			bonusBtnPlaces[i++] = t;

        gameController = Camera.main.GetComponent<GameController>();
    }

	// Use this for initialization
	void Start () {
		add_bonus(3);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	
	private void add_bonus(int indexOfBonus)
    {
		if (currentPlace < bonusBtnPlaces.Length)
        {
			Instantiate(bonuses[indexOfBonus], bonusBtnPlaces[currentPlace]);			
			currentPlace++;
        }
    }


	public void change_color_glass(GameObject glassBlock)
    {
		//Пройти по всем бонусным кнопкам, чтобы найти скрипт для смены цвета фильтра
		foreach(Transform t in transform)
        {
            if (t.childCount > 0)
            {
                ChangeGlassColor script = t.GetChild(0).GetComponent<ChangeGlassColor>();
                if (script != null)
                {
                    script.click_on_glass(glassBlock);
                    gameController.rebuild_for_curent_vertex();
                    break;
                }
            }
        }
    }
}
