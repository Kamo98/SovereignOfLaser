using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// Для сравнения Transform по координате Y
class TransformComparer : IComparer<Transform>
{
	public int Compare(Transform a, Transform b)
	{
		if (a.position.y > b.position.y)
			return -1;
		if (a.position.y < b.position.y)
			return 1;
		return 0;
	}
}

public class GraphBuilder : MonoBehaviour {

	private Transform[] listOfVertexes;
	private Dictionary<Transform, int> dictOfVertexes;
	private List<int>[] graph;
	
	
	void Start () {
		// Получить список точек для вершин графа
		listOfVertexes = new Transform[transform.childCount];
		dictOfVertexes = new Dictionary<Transform, int>();
		int i = 0;
		foreach (Transform t in transform)
			listOfVertexes[i++] = t;

		// Сортируем вершины по возрастанию Y
		Array.Sort(listOfVertexes, new TransformComparer());

		i = 0;
		foreach (Transform t in listOfVertexes)
			dictOfVertexes[t] = i++;

		// Построить граф
		build_graph();
		Debug.Log("Start GraphBuilder");
	}
	
	// Update is called once per frame
	void Update () {

		/*for (int j = 0; j < graph.Length; j++)
			foreach (int to in graph[j])
				Debug.DrawLine(listOfVertexes[j].position, listOfVertexes[to].position, Color.red);*/
	}


	private void build_graph()
	{
		graph = new List<int>[listOfVertexes.Length];
		for (int k = 0; k < graph.Length; k++)
			graph[k] = new List<int>();
		int i = 0;
		foreach(Transform from in listOfVertexes)
		{
			int j = 0;
			foreach (Transform to in listOfVertexes)
			{
				if (i != j)
				{
					// Пустить прямую из вершины from в вершину to
					bool possible = true;       // Лазер пустить возможно
					RaycastHit2D[] hits = Physics2D.LinecastAll(from.position, to.position);
					// и проверить все колайдеры, встретвшиеся на пути
					foreach (RaycastHit2D hit in hits)
						if (hit.collider.tag == "ImpassableBlock")		//На пути встретился непроходимый блок
						{
							possible = false;
							break;
						}
					if (possible)		//если возможно, то добавляем ребро в граф
						graph[i].Add(j);

				}
				j++;
			}
			i++;
		}
	}



	// Обновление списка смежности для вершины
	public void rebuild_for_vertex(Transform curVertex, COLOR_OF_VERTEX iteratorOfLaser)
	{
		int numOfVert = dictOfVertexes[curVertex];
		graph[numOfVert] = new List<int>();
		int j = 0;
		foreach (Transform to in listOfVertexes)
		{
			if (numOfVert != j)
			{
				// Пустить прямую из вершины from в вершину to
				bool possible = true;       // Лазер пустить возможно
				RaycastHit2D[] hits = Physics2D.LinecastAll(curVertex.position, to.position);
				// и проверить все колайдеры, встретвшиеся на пути
				foreach (RaycastHit2D hit in hits)
					if (hit.collider.tag == "ImpassableBlock")      //На пути встретился непроходимый блок
					{
						possible = false;
						break;
					} else if (hit.collider.tag == "RewardBlock")
					{
						GlassBlockScript glassBlock = hit.collider.gameObject.GetComponent<GlassBlockScript>();
						if (glassBlock.color != iteratorOfLaser)
						{
							possible = false;
							break;
						}
					}
				if (possible)       //если возможно, то добавляем ребро в граф
					graph[numOfVert].Add(j);

			}
			j++;
		}
	}

	public Transform[] get_list_of_vertex()
	{
		return listOfVertexes;
	}

	// Возвращает массив смежных с vertex вершин
	public Transform[] get_related_vertex(Transform vertex)
	{
		int v = dictOfVertexes[vertex];
		List<Transform> listOfRelated = new List<Transform>();
		foreach (int to in graph[v])
			listOfRelated.Add(listOfVertexes[to]);
		return listOfRelated.ToArray();
	}

	// Проверяет, являются ли вершины смежными
	public bool is_related_vertex (Transform v1, Transform v2)
	{
		return graph[dictOfVertexes[v1]].Contains(dictOfVertexes[v2]);
	}

	/*private void enable_all_colliders(bool var)
	{
		foreach (Transform t in listOfVertexes)
		{
			CircleCollider2D collider = t.gameObject.GetComponent<CircleCollider2D>();
			if (collider != null)
				collider.enabled = var;
			else Debug.LogError("CircleCollider2D у объекта " + t.name + " не существует ");
		}
	}*/
}
