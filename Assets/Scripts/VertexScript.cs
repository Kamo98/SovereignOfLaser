using System;
using UnityEngine;
using UnityEngine.EventSystems;

public enum COLOR_OF_VERTEX
{
	COLOR1 = 0,
	COLOR2 = 1
}
public class VertexScript : MonoBehaviour, IPointerDownHandler {
	
	private GameController gameController;      //Ссылка на игровой котроллер
	private Animator animator;


	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
		animator = GetComponent<Animator>();
	}

	// Use this for initialization
	void Start () {
	}
	
	public void OnPointerDown(PointerEventData eventData)
	{
		gameController.add_new_vertex(transform);
	}

	// Update is called once per frame
	void FixedUpdate () {
		
	}


	/*public void prepare_for_change_color()
	{
		Debug.Log(name + "  prepare_for_change_color");
		animator.speed = 3;
	}*/

	// Запуск анимационной смены цвета вершины
	public void change_color(COLOR_OF_VERTEX numOfAnimation)
	{
		switch (numOfAnimation) {
			case COLOR_OF_VERTEX.COLOR1:
				animator.SetBool("CurrentRed", true);
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
}
