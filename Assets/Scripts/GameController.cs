using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Объект, управляющий игрой
public class GameController : MonoBehaviour {

	private GraphBuilder graphBuilder;      //Ссылка на построитель графов
	private List<Transform>[] pathOfLasers; //Пути лазеров
	private Transform[] enhanceVertexes;    //Выделенные в текущий момент вершины
	private Dictionary<Transform, bool> isFreeVertex;   //Свободна ли вершина
	private Transform currentVertex;        //Текущая вершина

	private COLOR_OF_VERTEX iteratorOfLaser;            //Итератор для лазеров

	public Transform[] sourceOfLasers;      //Список источнков лазеров
	public Transform[] targetOfLasers;      //Список приёмников лазеров
	public GameObject Laser;                //Префаб лазера

	private Dictionary<Transform, int> dictOfTargets;       //Приёмник лазера -> номер лазера (для идентификации приёмников)

	private CameraControl cameraControl;

	private int score;

	private void Awake()
	{
		cameraControl = GetComponent<CameraControl>();
	}

	// Use this for initialization
	void Start() {
		GameObject vertexes = GameObject.Find("Vertexes");      //Получаем объект со всеми вершинами
		graphBuilder = vertexes.GetComponent<GraphBuilder>();

		// Изначально все вершины незанятые
		Transform[] listOfVertexes = graphBuilder.get_list_of_vertex();
		isFreeVertex = new Dictionary<Transform, bool>();
		foreach (Transform vert in listOfVertexes)
			isFreeVertex[vert] = true;


		// Создать списки для хранения путей лазеров и инициализировать пути
		pathOfLasers = new List<Transform>[sourceOfLasers.Length];
		for (int i = 0; i < pathOfLasers.Length; i++)
		{
			pathOfLasers[i] = new List<Transform>();
			pathOfLasers[i].Add(sourceOfLasers[i].transform);
			isFreeVertex[sourceOfLasers[i]] = false;
		}

		// Инициализация приёмников
		dictOfTargets = new Dictionary<Transform, int>();
		for (int i = 0; i < targetOfLasers.Length; i++)
			dictOfTargets[targetOfLasers[i]] = i;

		// Игрок начинает строить лазер с первого в списке
		iteratorOfLaser = 0;

		change_current_vertex();
	}

	

	// Добавление новой вершины в текущий путь
	public void add_new_vertex(Transform vertex)
	{
		// Добавляем новую вершину в путь, если она свободна
		if (isFreeVertex[vertex])
		{
			if (graphBuilder.is_related_vertex(currentVertex, vertex))      // и смежна с текущей
			{
				bool isNeedLaser = true;            //Нужно ли рисовать лазер
				bool isNeedChangeLaser = false;     //Нужна ли смена лазера

				// Если выбранная вершина - целевая
				if (vertex.tag == "TargetOfLaser")
				{
					if (dictOfTargets[vertex] == (int)iteratorOfLaser)   //цель для текущего лазера?
						isNeedChangeLaser = true;
					else
					{
						isNeedLaser = false;
					}
				}

				if (isNeedLaser)
				{
					pathOfLasers[(int)iteratorOfLaser].Add(vertex);  //Добавляем вершину в путь
					isFreeVertex[vertex] = false;               //Помечаем как занятую
					GameObject laser = Instantiate(Laser);      //Создаем объект лазера из префаба
					Laser laserScript = laser.GetComponent<Laser>();        //Получаем скрипт лазера
					laserScript.init_laser(currentVertex, vertex, true, iteratorOfLaser);    //Инициализируем лазерный луч


					// Оповещаем вершину о начале движения лазера к ней
					if (!isNeedChangeLaser) {
						VertexScript vertexScript = vertex.GetComponent<VertexScript>();
						//vertexScript.prepare_for_change_color();
						vertexScript.change_color(iteratorOfLaser);
					}

					unselected_related_vertexes();      //Снимаем выделение со старых смежных вершин
				}

				if (isNeedChangeLaser)
					next_laser();
				else if (isNeedLaser)
					change_current_vertex();

				// Снимаем выделение с текущей вершины
				//unselect_vertex(currentVertex);


				/*if (isNeedLaser)
				{
					if (!isNeedChangeLaser)
						selected_related_vertexes();        //Выделяем новые смежные вершины
				}*/
			}
			else
				Debug.Log("Вершина " + vertex.name + " недоступна");
		}
		else
			Debug.Log("Вершина " + vertex.name + " занята");
	}



	// Возвращает позицию текущего источника лазера
	public Vector2 get_position_sourceL()
	{
		return sourceOfLasers[(int)iteratorOfLaser].position;
	}

	//Возвращает номер текущего лазера
	public int get_iterator_of_lasers()
	{
		return (int)iteratorOfLaser;
	}

	// Возвращает все смежные на текущий момент вершины
	public Transform[] get_enhance_vertexes ()
	{
		return enhanceVertexes;
	}

	// Возвращает текущую вершину
	public Transform get_current_vertex ()
	{
		return currentVertex;
	}


	// Меняет текущую вершину на последнюю в текущем пути
	private void change_current_vertex ()
	{
		currentVertex = pathOfLasers[(int)iteratorOfLaser][pathOfLasers[(int)iteratorOfLaser].Count - 1];
		graphBuilder.rebuild_for_vertex(currentVertex, iteratorOfLaser);
		selected_related_vertexes();
	}


	// Снимает выделение со смежных с текущей вершин
	private void unselected_related_vertexes()
	{
		// При необходимости снимаем выделение с прежних смежных вершин
		if (enhanceVertexes != null)
		{
			foreach (Transform vertex in enhanceVertexes)
				if (isFreeVertex[vertex])
					unselect_vertex(vertex);
		}
	}

	// Выделяет смежные с текущей вершины в текущем пути
	private void selected_related_vertexes()
	{
		// Получить все смежные с текущей вершины
		enhanceVertexes = graphBuilder.get_related_vertex(currentVertex);
		List<Transform> tmp = new List<Transform>();
		foreach (Transform vertex in enhanceVertexes)
			if (vertex.tag == "TargetOfLaser")
			{      //вершина целевая для текущего лазера
				if (dictOfTargets[vertex] == (int)iteratorOfLaser)
				{
					select_vertex(vertex);
					tmp.Add(vertex);
				}
			}
			else if (isFreeVertex[vertex])
			{       // Вершина свободна, но не целевая
				select_vertex(vertex);
				tmp.Add(vertex);
			}
		enhanceVertexes = tmp.ToArray();
	}


	// Смена лазера либо окончание уровня
	private void next_laser()
	{
		// Текущий лазер последний на уровне
		if ((int)iteratorOfLaser == targetOfLasers.Length - 1)
		{
			Debug.Log("Уровень завершён");
		} else
		{
			// Игрок начинает строить лазер со следующего в списке
			iteratorOfLaser++;

			// Смена текущей вершины
			change_current_vertex();

			// Камера уезжает вверх
			cameraControl.move_up();
		}
	}

	

	private void select_vertex(Transform vertex)
	{
		if (vertex.tag == "SourceOfLasers" || vertex.tag == "TargetOfLaser")
		{
			VertexDopScript vertexScript = vertex.GetComponent<VertexDopScript>();
			vertexScript.animate_select_vertex();
		}
		else
		{
			VertexScript vertexScript = vertex.GetComponent<VertexScript>();
			vertexScript.animate_select_vertex();
		}
	}

	private void unselect_vertex(Transform vertex)
	{
		if (vertex.tag == "SourceOfLasers" || vertex.tag == "TargetOfLaser")
		{
			VertexDopScript vertexScript = vertex.GetComponent<VertexDopScript>();
			vertexScript.deanimate_select_vertex();
		}
		else
		{
			VertexScript vertexScript = vertex.GetComponent<VertexScript>();
			vertexScript.deanimate_select_vertex();
		}
	}


	public void add_to_score (int count)
	{
		score += count;
		Debug.Log("Score = " + score);
	}


	private void log_dcitionary<Tkey, Tval>(Dictionary<Tkey, Tval> dict)
	{
		foreach (KeyValuePair<Tkey, Tval> pr in dict)
			Debug.Log(pr.Key + " : " + pr.Value);
	}
}
