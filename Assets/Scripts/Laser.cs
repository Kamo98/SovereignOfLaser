using UnityEngine;

public class Laser : MonoBehaviour {

	public Material[] laserMaterials;

	public float speed;

	private LineRenderer lineRenderer;
	private Transform sourceVertex;
	private Transform targetVertex;
	private COLOR_OF_VERTEX numOfMaterial;
	private bool isLongLaser;		//Должен ли лазер дойти до вершины
	private bool isInit;
	private bool isFullRenderer;

	private float currentLength;

	private GameController gameController;
	private AudioSource audioLaser;

	private void Awake()
	{
		lineRenderer = GetComponent<LineRenderer>();
		gameController = Camera.main.GetComponent<GameController>();
		lineRenderer.material = laserMaterials[0];
		isFullRenderer = isInit = false;
		audioLaser = GetComponent<AudioSource>();
		/*audioLaser.Play();
		audioLaser.Pause();*/
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
					isFullRenderer = true;
				}
				else
				{
					// Пустить прямую из вершины sourceVertex в текущий конец лазера
					RaycastHit2D[] hits = Physics2D.LinecastAll(sourceVertex.position, lineRenderer.GetPosition(1));
					// и проверить все колайдеры, встретвшиеся на пути
					foreach (RaycastHit2D hit in hits)
						if (hit.collider.tag == "ImpassableBlock")      //На пути встретился непроходимый блок
						{
							ImpassableBlock blockScript = hit.collider.GetComponent<ImpassableBlock>();
							blockScript.hit_of_laser(hit.point);
							isFullRenderer = true;
							//Destroy(gameObject, 0.5f);
							break;
						}
						else if (hit.collider.tag == "StaticGlass" || hit.collider.tag == "FragileGlass")       //На пути стеклянный блок
						{
							GlassBlockScript blockScript = hit.collider.GetComponent<GlassBlockScript>();
							if (isLongLaser)
							{
								//Совпадают ли цвет блока и лазера								
								if (blockScript.color == COLOR_OF_VERTEX.TRANSPARENT || blockScript.color == numOfMaterial)
								{
									if (blockScript.is_active())
										blockScript.hit_of_laser();
								}
								else
								{
									Debug.LogError("Цвет лазера и блока НЕ совпадают, при этом isLongLaser = " + isLongLaser);
								}
							}
							else  //Лазер мало живёт
							{
								//Лазер НЕ может пройти сквозь блок							
								if (blockScript.color != COLOR_OF_VERTEX.TRANSPARENT && blockScript.color != numOfMaterial)
								{
									ImpassableBlock blockImpassableScript = hit.collider.GetComponent<ImpassableBlock>();
									blockImpassableScript.hit_of_laser(hit.point);
									isFullRenderer = true;
									//Destroy(gameObject, 0.5f);
									break; ;
								}
							}
						}
						else if (hit.collider.tag == "OneReward")
						{
							if (isLongLaser)
							{
								RewardScript rewardScript = hit.collider.gameObject.GetComponent<RewardScript>();
								if (rewardScript.is_active())
									rewardScript.hit_of_laser();
							}
						}
				}
			}
			else if (!isLongLaser)
				Destroy(gameObject, 0.5f);		//Нужно заменить исчезновение лазера на анимацию
		}
	}

	//Инициализация лазера
	public void init_laser (Transform source, Transform target, bool is_LongLaser, COLOR_OF_VERTEX numOfMaterialForLine)
	{
		sourceVertex = source;
		targetVertex = target;
		numOfMaterial = numOfMaterialForLine;
		isLongLaser = is_LongLaser;
		lineRenderer.SetPosition(0, sourceVertex.position);
		lineRenderer.SetPosition(1, Vector3.Lerp(sourceVertex.position, targetVertex.position, currentLength));
		currentLength += speed;

		if ((int)numOfMaterial < laserMaterials.Length)
			lineRenderer.material = laserMaterials[(int)numOfMaterial];
		else
			Debug.LogError("Индекс материала для линии выходит за границы массива с материалами");
		isInit = true;

		/*if(soundLaser != null)
			AudioSource.PlayClipAtPoint(soundLaser, Vector3.one, 0.5f);*/
		audioLaser.Play();

	}
}
