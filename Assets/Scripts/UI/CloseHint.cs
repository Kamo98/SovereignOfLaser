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
		gameController.resume_game_for_hint();
		closingObject.SetActive(false);
		closingGrayPanel.SetActive(false);
		img.sprite = normalButton;
	}
}
