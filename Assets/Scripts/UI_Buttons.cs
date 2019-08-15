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
	

	private void OnMouseDown()
	{
		img.sprite = activeButton;
	}

	private void OnMouseUp()
	{
		img.sprite = normalButton;
		
	}

	private void OnMouseUpAsButton()
	{
		switch (gameObject.name)
		{
			case "Play":
				SceneManager.LoadScene("Level0");
			break;
			case "Rating":
				Application.OpenURL("https://www.youtube.com/watch?v=-4_Kr_fKEls&list=PL0lO_mIqDDFXusFv_NRgccTQHFBdChWCo&index=6");
			break;

			case "Button replay":       //Перезагрузка уровня
				SceneManager.LoadScene(SceneManager.GetActiveScene().name);
				break;
			case "Button home":         //Возврат на главное меню
				SceneManager.LoadScene("main");
			break;

			case "Button pause":
				gameController.pause_game();
			break;
			case "Button resume":
				gameController.resume_game();
			break; 
		}
	}
}
