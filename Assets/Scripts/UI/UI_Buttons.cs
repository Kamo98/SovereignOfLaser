using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UI_Buttons : MonoBehaviour {

	public Sprite normalButton, activeButton;

	private Image img;
	private GameController gameController;
	


	private void Awake()
	{
		img = GetComponent<Image>();
		gameController = Camera.main.GetComponent<GameController>();
	}

	private void Start()
	{
		RectTransform rectTranform = GetComponent<RectTransform>();
		BoxCollider2D collider = GetComponent<BoxCollider2D>();
		collider.size = rectTranform.rect.size;
	}
	

	public void OnMouseDown()
	{
		Debug.Log("OnMouseDown");
		Vibration.Vibrate(40);
		img.sprite = activeButton;
	}

	public void OnMouseUp()
	{
		Debug.Log("OnMouseUp");
		img.sprite = normalButton;
		
	}

	public void OnMouseUpAsButton()
	{
		Debug.Log("OnMouseUpAsButton");
		switch (gameObject.name)
		{
			case "Play":
				SceneManager.LoadScene("List of levels");
			break;
			case "Rating":
				Application.OpenURL("https://play.google.com/store/apps");
			break;

			case "Button replay":       //Перезагрузка уровня
				SceneManager.LoadScene(SceneManager.GetActiveScene().name);
				break;
			case "Button home":         //Возврат на главное меню
				SceneManager.LoadScene("List of levels");
			break;

			case "Button pause":
				gameController.pause_game();
			break;
			case "Button resume":
				gameController.resume_game();
			break;
			case "Button next level":
				gameController.move_to_next_level();
			break;
		}
	}
}
