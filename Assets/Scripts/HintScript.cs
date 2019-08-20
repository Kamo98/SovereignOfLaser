using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


//В этом классе страшно много констант
public class HintScript : MonoBehaviour {

	public string textForHint;
	public GameObject hintCanvas;
	public GameObject hintGrayCanvas;

	public GameObject[] actionObjects;

	public bool permissionStartOnVisible;
	public bool permissionStartOnClick;

	//private int[] ordersInLayer;
	private GameController gameController;
	private bool viewed;

	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
		if (PlayerPrefs.GetInt(SceneManager.GetActiveScene().name + "_" + name + "_hint") == 1)
			viewed = true;
	}

	
	// Update is called once per frame
	void Update () {
		if (!viewed) {
			if (permissionStartOnVisible && permissionStartOnClick && Camera.main.transform.position.y <= transform.position.y)
			{
				start_hint();
			}
		}
		else if (!hintCanvas.activeSelf)
		{
			destroy_hint();
		}
	}

	private void start_hint ()
	{
		viewed = true;
		PlayerPrefs.SetInt(SceneManager.GetActiveScene().name + "_" + name + "_hint", 1);
		gameController.pause_game_for_hint();
		hintCanvas.SetActive(true);
		hintCanvas.transform.Find("Panel (1)").transform.Find("Text").GetComponent<Text>().text = textForHint;
		hintGrayCanvas.SetActive(true);
		foreach (GameObject obj in actionObjects)
		{
			switch (obj.tag)
			{
				case "Vertex":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 15;
					obj.transform.GetChild(1).GetComponent<SpriteRenderer>().sortingOrder = 15;
					break;
				case "SorceOfLasers":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 15;
					break;
				case "ImpassableBlock":
					obj.GetComponent<SpriteRenderer>().sortingOrder = 15;
					break;
				case "OneReward":
					obj.GetComponent<SpriteRenderer>().sortingOrder = 15;
					break;
				case "TargetOfLaser":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 15;
					break;
			}
		}
	}

	private void destroy_hint ()
	{
		foreach (GameObject obj in actionObjects)
		{
			switch (obj.tag)
			{
				case "Vertex":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 4;
					obj.transform.GetChild(1).GetComponent<SpriteRenderer>().sortingOrder = 4;
					break;
				case "SorceOfLasers":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 0;
					break;
				case "ImpassableBlock":
					obj.GetComponent<SpriteRenderer>().sortingOrder = 3;
					break;
				case "OneReward":
					obj.GetComponent<SpriteRenderer>().sortingOrder = 0;
					break;
				case "TargetOfLaser":
					obj.transform.GetChild(0).GetComponent<SpriteRenderer>().sortingOrder = 0;
					break;
			}
		}
		Destroy(gameObject);
	}
}
