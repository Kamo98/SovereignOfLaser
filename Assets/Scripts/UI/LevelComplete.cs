using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LevelComplete : MonoBehaviour {

	private GameController gameController;
	private Transform panelGreen;
	private Animator animator;

	private int countStars;

	// Use this for initialization
	void Start () {
		gameController = Camera.main.GetComponent<GameController>();
		animator = GetComponent<Animator>();
		panelGreen = transform.Find("Panel");
		Transform star1 = panelGreen.Find("Star1");
		Transform star2 = panelGreen.Find("Star2");
		Transform star3 = panelGreen.Find("Star3");

		int curScore = gameController.get_score();
		int maxScore = gameController.get_max_score();

		countStars = (int) (curScore / (maxScore / 3.0f));
		Debug.Log("curScore = " + curScore + "  maxScore = " + maxScore + " countStars = " + countStars);
		Debug.Log("maxScore / 3.0f = " + maxScore / 3.0f + "  curScore / (maxScore / 3.0f) = " + curScore / (maxScore / 3.0f) + " (int) (curScore / (maxScore / 3.0f)) = " + (int)(curScore / (maxScore / 3.0f)));

		if (countStars >= 1)
		{
			animator.SetBool("Star1", true);
			if (countStars >= 2)
			{
				animator.SetBool("Star2", true);
				if (countStars >= 3)
					animator.SetBool("Star3", true);
			}
		}

		//Сохранение инфы о пройденном уровне
		string curSceneName = SceneManager.GetActiveScene().name;
		PlayerPrefs.SetInt(curSceneName + "_stars", Mathf.Max(countStars, PlayerPrefs.GetInt(curSceneName + "_stars")));
		if (PlayerPrefs.GetInt(curSceneName + "_state") != (int)LevelButton.State_of_level.complete)
		{
			PlayerPrefs.SetInt(curSceneName + "_state", (int)LevelButton.State_of_level.complete);
			PlayerPrefs.SetInt(LevelsManager.nextLevels[curSceneName] + "_state", (int)LevelButton.State_of_level.current);
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
