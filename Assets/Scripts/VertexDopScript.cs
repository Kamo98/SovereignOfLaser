using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class VertexDopScript : MonoBehaviour, IPointerDownHandler
{

	private GameController gameController;      //Ссылка на игровой котроллер

	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
	}


	public void OnPointerDown(PointerEventData eventData)
	{
		gameController.add_new_vertex(transform);
	}


	// Запускает анимацию выделения вершины
	public void animate_select_vertex()
	{
		Debug.Log("Анимация таргета  " + name);
	}

	// Останавливает анимацию выделения вершины
	public void deanimate_select_vertex()
	{
		Debug.Log("ДЕАнимация таргета  " + name);
	}


	public void play_simple_click()
	{
	}
}
