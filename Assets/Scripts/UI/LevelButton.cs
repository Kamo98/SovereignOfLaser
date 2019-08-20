using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LevelButton : MonoBehaviour {

	public Sprite currentLevelImg;
	public Sprite currentLevelImgActive;

	public Sprite completeLevelImg;
	public Sprite completeLevelImgActive;

	public Sprite lockedLevelImg;
	public Sprite enabledStar;


	private Transform levelButton;
	private Image imgLevelButton;

	public enum State_of_level
	{
		locked,
		complete,
		current
	}

	private State_of_level state;


	// Use this for initialization
	void Start () {
		levelButton = transform.Find("Level Button");
		imgLevelButton = levelButton.GetComponent<Image>();

		State_of_level statePrefs = (State_of_level)PlayerPrefs.GetInt(name + "_state");
		int countStars = PlayerPrefs.GetInt(name + "_stars");
		if (statePrefs == State_of_level.locked)
		{
			//Уровень заблокирован
			state = State_of_level.locked;
			imgLevelButton.sprite = lockedLevelImg;
			levelButton.GetChild(0).gameObject.SetActive(false);
		} else if (statePrefs == State_of_level.complete)
		{
			//Уровень проёденный
			state = State_of_level.complete;
			
			levelButton.GetComponent<Image>().sprite = completeLevelImg;

			//Установить звёзды
			if (countStars >= 1)
			{
				transform.Find("Star1").GetComponent<Image>().sprite = enabledStar;
				if (countStars >= 2)
				{
					transform.Find("Star2").GetComponent<Image>().sprite = enabledStar;
					if (countStars == 3)
						transform.Find("Star3").GetComponent<Image>().sprite = enabledStar;
				}
			}
		}

		if (statePrefs == State_of_level.current)
		{
			//Текущий уровень
			state = State_of_level.current;
			Image imageLevelBtn = levelButton.GetComponent<Image>();
			imageLevelBtn.sprite = currentLevelImg;
			levelButton.GetChild(0).GetComponent<Text>().color = Color.red;
			levelButton.GetChild(0).gameObject.SetActive(true);
		}


	}


	private void OnMouseDown()
	{
		if (state == State_of_level.complete)
			imgLevelButton.sprite = completeLevelImgActive;
		else if (state == State_of_level.current)
			imgLevelButton.sprite = currentLevelImgActive;
	}

	private void OnMouseUp()
	{
		if (state == State_of_level.complete)
			imgLevelButton.sprite = completeLevelImg;
		else if (state == State_of_level.current)
			imgLevelButton.sprite = currentLevelImg;
	}

	private void OnMouseUpAsButton()
	{
		if (state != State_of_level.locked)
			SceneManager.LoadScene(name);
	}
}
