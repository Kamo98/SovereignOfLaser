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

	private bool tmp;

	void Awake() {
		Debug.Log("Awake Graph Builder");
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
	}

	// Update is called once per frame
	void Update()
	{
		for (int j = 0; j < graph.Length; j++)
			foreach (int to in graph[j])
				Debug.DrawLine(listOfVertexes[j].position, listOfVertexes[to].position, tmp ? Color.green : Color.red);
				//Debug.Log(listOfVertexes[j] + " -> " + listOfVertexes[to]);
	}


	private void build_graph()
	{
		graph = new List<int>[listOfVertexes.Length];
		for (int k = 0; k < graph.Length; k++)
			graph[k] = new List<int>();
		int i = 0;
		foreach (Transform from in listOfVertexes)
		{
			int j = 0;
			foreach (Transform to in listOfVertexes)
			{
				if (i != j)
				{
					if (raycast_to_vertex(from, to, COLOR_OF_VERTEX.TRANSPARENT))
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
		if (iteratorOfLaser == COLOR_OF_VERTEX.COLOR2)
			tmp = true;

		int numOfVert = dictOfVertexes[curVertex];
		graph[numOfVert] = new List<int>();
		int j = 0;
		foreach (Transform to in listOfVertexes)
		{
			if (numOfVert != j)
			{
				
				if (raycast_to_vertex(curVertex, to, iteratorOfLaser))       //возможно ли пустить прямую из вершины from в вершину to?
					graph[numOfVert].Add(j);            //Если да, то добавляем ребро в граф

			}
			j++;
		}
	}


	private bool raycast_to_vertex(Transform curVertex, Transform to, COLOR_OF_VERTEX iteratorOfLaser)
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
			}
			else if (hit.collider.tag == "StaticGlass" || hit.collider.tag == "FragileGlass")
			{
				if (iteratorOfLaser != COLOR_OF_VERTEX.TRANSPARENT)         //КОСТЫЛЬ ДЛЯ КОСТЫЛЯ build_graph
				{
					GlassBlockScript glassBlock = hit.collider.gameObject.GetComponent<GlassBlockScript>();
					if (glassBlock.color != iteratorOfLaser && glassBlock.color != COLOR_OF_VERTEX.TRANSPARENT)
					{
						possible = false;
						break;
					}
				}
			}
		return possible;
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
}
