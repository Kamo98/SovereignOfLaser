using UnityEngine;

public class Laser : MonoBehaviour {

	public Material[] laserMaterials;

	public float speed;

	private LineRenderer lineRenderer;
	private Transform sourceVertex;
	private Transform targetVertex;
	private COLOR_OF_VERTEX numOfMaterial;
	private bool isLongLivedLaser;
	private bool isInit;
	private bool isFullRenderer;

	private float currentLength;

	private GameController gameController;


	private void Awake()
	{
		lineRenderer = GetComponent<LineRenderer>();
		gameController = Camera.main.GetComponent<GameController>();
		lineRenderer.material = laserMaterials[0];
		isFullRenderer = isInit = false;
	}

	// Use this for initialization
	void Start ()
	{
	}
	
	// Update is called once per frame
	void Update () {
		if (isInit)
		{
			if (!isFullRenderer)
			{
				Vector3 oldPosition1 = lineRenderer.GetPosition(1);
				lineRenderer.SetPosition(1, Vector3.Lerp(sourceVertex.position, targetVertex.position, currentLength));
				currentLength += speed;
				
				// Конец лазера перестал двигаться
				if (oldPosition1 == lineRenderer.GetPosition(1))
				{
					/*change_color_of_vertex(targetVertex, numOfMaterial);
					isFullRenderer = true;*/
				} else
				{
					// Пустить прямую из вершины sourceVertex в текущий конец лазера
					RaycastHit2D[] hits = Physics2D.LinecastAll(sourceVertex.position, lineRenderer.GetPosition(1));
					// и проверить все колайдеры, встретвшиеся на пути
					foreach (RaycastHit2D hit in hits)
						if (hit.collider.tag == "ImpassableBlock")      //На пути встретился непроходимый блок
						{
							Debug.Log("On path ImpassableBlock");
							break;
						}
						else if (hit.collider.tag == "RewardBlock")		//На пути цветной блок с вознаграждением
						{
							GlassBlockScript blockScript = hit.collider.gameObject.GetComponent<GlassBlockScript>();
							if (blockScript.is_active())
								gameController.add_to_score(blockScript.hit_of_laser());
						} else if (hit.collider.tag == "OneReward")
						{
							RewardScript rewardScript = hit.collider.gameObject.GetComponent<RewardScript>();
							if (rewardScript.is_active())
								gameController.add_to_score(rewardScript.destroy_reward());
						}
				}
			}
		}
	}

	public void init_laser (Transform source, Transform target, bool isLongLived, COLOR_OF_VERTEX numOfMaterialForLine)
	{
		sourceVertex = source;
		targetVertex = target;
		isLongLivedLaser = isLongLived;
		numOfMaterial = numOfMaterialForLine;
		lineRenderer.SetPosition(0, sourceVertex.position);
		lineRenderer.SetPosition(1, Vector3.Lerp(sourceVertex.position, targetVertex.position, currentLength));
		currentLength += speed;

		if ((int)numOfMaterial < laserMaterials.Length)
			lineRenderer.material = laserMaterials[(int)numOfMaterial];
		else
			Debug.LogError("Индекс материала для линии выходит за границы массива с материалами");
		isInit = true;
	}

	// Смена текстуры вершины
	private void change_color_of_vertex(Transform vertex, COLOR_OF_VERTEX numOfNewColor)
	{
		if (vertex.tag != "SourceOfLasers" && vertex.tag != "TargetOfLaser")
		{
			VertexScript vertexScript = vertex.GetComponent<VertexScript>();
			vertexScript.change_color(numOfNewColor);
		}
	}
}
