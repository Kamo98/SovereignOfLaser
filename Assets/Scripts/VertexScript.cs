using System;
using UnityEngine;
using UnityEngine.EventSystems;

public enum COLOR_OF_VERTEX
{
	TRANSPARENT = -1,
	COLOR1 = 0,
	COLOR2 = 1
}
public class VertexScript : MonoBehaviour, IPointerDownHandler {
	
	private GameController gameController;      //Ссылка на игровой котроллер
	private Animator animator;
	public AudioClip soundClick;

	public Transform hintForVisible;
	public Transform hintForClick;

	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
		animator = GetComponent<Animator>();
		if (gameController == null)
			Debug.LogError("GameController = null   VertexScript.Awake()");

	}

	// Use this for initialization
	void Start () {
	}
	
	public void OnPointerDown(PointerEventData eventData)
	{
		if (Time.timeScale != 0)
			gameController.add_new_vertex(transform);
	}

	private void Update()
	{
		if (hintForVisible != null)
		{
			if (transform.position.y >= Camera.main.transform.position.y - 0.9f * Camera.main.orthographicSize)
				hintForVisible.GetComponent<HintScript>().permissionStartOnVisible = true;
		}
	}
	

	// Запуск анимационной смены цвета вершины
	public void change_color(COLOR_OF_VERTEX numOfAnimation)
	{
		if (hintForClick != null)
			hintForClick.GetComponent<HintScript>().permissionStartOnClick = true;
		switch (numOfAnimation) {
			case COLOR_OF_VERTEX.COLOR1:
				animator.SetBool("CurrentRed", true);
			break;
			case COLOR_OF_VERTEX.COLOR2:
				animator.SetBool("CurrentGreen", true);
			break;
		}
	}

	// Запускает анимацию выделения вершины
	public void animate_select_vertex()
	{
		animator.SetBool("Selected", true);
	}

	// Останавливает анимацию выделения вершины
	public void deanimate_select_vertex()
	{
		animator.SetBool("Selected", false);
	}

	public void play_simple_click()
	{
		if (soundClick != null)
			AudioSource.PlayClipAtPoint(soundClick, Vector3.one);
	}
}
