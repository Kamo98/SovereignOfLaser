using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlassBlockScript : MonoBehaviour {

	private Transform[] listOfRewards;				//Список вознаграждений
	private RewardScript[] listIfRewardScripts;     //Список скриптов вознаграждений

	public COLOR_OF_VERTEX color;

	private bool isActive;

	// Use this for initialization
	void Start () {
		listOfRewards = new Transform[transform.childCount];
		listIfRewardScripts = new RewardScript[transform.childCount];
		int i = 0;
		foreach (Transform t in transform)
		{
			listOfRewards[i] = t;
			listIfRewardScripts[i++] = t.GetComponent<RewardScript>();
		}
		isActive = true;
	}
	
	// Update is called once per frame
	void Update () {
		
	}


	public bool is_active()
	{
		return isActive;
	}

	// Попадание лазера
	public int hit_of_laser ()
	{
		int totalReward = 0;
		foreach (RewardScript sc in listIfRewardScripts)
			totalReward += sc.destroy_reward();
		isActive = false;
		return totalReward;
	}


}
