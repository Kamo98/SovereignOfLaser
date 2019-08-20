using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class VertexDopScript : MonoBehaviour, IPointerDownHandler
{

	private GameController gameController;      //Ссылка на игровой котроллер
	private Animator animator;

	public Transform hintForVisible;
	public Transform hintForClick;

	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
		animator = GetComponent<Animator>();
	}

	private void Update()
	{
		if (hintForVisible != null)
		{
			if (transform.position.y >= Camera.main.transform.position.y - 0.9f * Camera.main.orthographicSize)
				hintForVisible.GetComponent<HintScript>().permissionStartOnVisible = true;
		}
	}

	public void OnPointerDown(PointerEventData eventData)
	{
		gameController.add_new_vertex(transform);
	}


	// Запускает анимацию выделения вершины
	public void animate_select_vertex()
	{
		Debug.Log("Анимация таргета  " + name);
		animator.SetBool("Select", true);
	}

	// Останавливает анимацию выделения вершины
	public void deanimate_select_vertex()
	{
		Debug.Log("ДЕАнимация таргета  " + name);
		animator.SetBool("Select", false);
	}

	public void hit_true_laser ()
	{
		if (hintForClick != null)
			hintForClick.GetComponent<HintScript>().permissionStartOnClick = true;
	}

	public void play_simple_click()
	{
	}
}
