using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CloseHint : MonoBehaviour {

	public Sprite normalButton, activeButton;
	public GameObject closingObject;
	public GameObject closingGrayPanel;

	private Image img;
	private GameController gameController;
	private bool sizeColloderSet;


	private void Awake()
	{
		img = GetComponent<Image>();
		gameController = Camera.main.GetComponent<GameController>();
	}
	

	private void Update()
	{
		if (!sizeColloderSet)
			if (closingObject.activeSelf)
			{
				RectTransform rectTranform = GetComponent<RectTransform>();
				BoxCollider2D collider = GetComponent<BoxCollider2D>();
				collider.size = rectTranform.rect.size;
				sizeColloderSet = true;
			}
	}

	public void OnMouseDown()
	{
		Vibration.Vibrate(40);
		img.sprite = activeButton;
	}

	public void OnMouseUp()
	{
		img.sprite = normalButton;
		
	}

	public void OnMouseUpAsButton()
	{
		gameController.resume_game_for_hint();
		closingObject.SetActive(false);
		closingGrayPanel.SetActive(false);
		img.sprite = normalButton;
	}
}
