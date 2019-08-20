using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


/*
PlayerPrefs
	IsNotFirst = "yes" | ""
	Level{i}_state = State_of_level
	Level{i}_stars = int
	 
*/

public class LevelsManager : MonoBehaviour {

	public static Dictionary<string, string> nextLevels = new Dictionary<string, string>();

	// Use this for initialization
	void Start()
	{
		if (PlayerPrefs.GetString("IsNotFirst") == "")
		{
			//Первый запуск
			Debug.Log("ПЕРВЫЙ ЗАПУСК");
			PlayerPrefs.SetString("IsNotFirst", "yes");
			PlayerPrefs.SetInt(transform.GetChild(0).name + "_state", (int)LevelButton.State_of_level.current);

			//Сброс пльзовательских настроек
			for (int i = 0; i < transform.childCount; i++)
			{
				if (transform.GetChild(0).name != transform.GetChild(i).name)
					PlayerPrefs.SetInt(transform.GetChild(i).name + "_state", (int)LevelButton.State_of_level.locked);
				PlayerPrefs.SetInt(transform.GetChild(i).name + "_stars", 0);
			}
		}

		//PlayerPrefs.SetString("IsNotFirst", "");

		for (int i = 0; i < transform.childCount; i++)
		{
			transform.GetChild(i).transform.Find("Level Button").GetChild(0).GetComponent<Text>().text = (i + 1).ToString();
			if (i != transform.childCount - 1)
				nextLevels[transform.GetChild(i).name] = transform.GetChild(i + 1).name;
		}
	}

	// Update is called once per frame
	void Update()
	{
		if (Application.platform == RuntimePlatform.Android)
			if (Input.GetKeyUp(KeyCode.Escape))
			{
				Debug.Log("KeyUp Esc");
				SceneManager.LoadScene("main");
			}
	}
}
