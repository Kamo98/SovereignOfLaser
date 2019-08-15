using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlassBlockScript : MonoBehaviour {

	private Transform[] listOfRewards;				//Список вознаграждений
	private RewardScript[] listIfRewardScripts;     //Список скриптов вознаграждений

	public COLOR_OF_VERTEX color;


	private bool isActive;
	private Animator animator;
	private AudioSource audioHitOfLaser;

	private void Awake()
	{
		animator = GetComponent<Animator>();
		audioHitOfLaser = GetComponent<AudioSource>();
	}

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
		if (animator.GetCurrentAnimatorStateInfo(0).IsName("DestroyGlass"))
		{
			Destroy(gameObject);
		}
	}


	public bool is_active()
	{
		return isActive;
	}

	// Попадание лазера
	public void hit_of_laser()
	{
		if (animator != null)
			animator.SetBool("hitLaser", true);
		if (audioHitOfLaser != null)
			audioHitOfLaser.Play();
		foreach (RewardScript sc in listIfRewardScripts)
			sc.hit_of_laser();
		isActive = false;
	}


	/*public int hit_of_laser ()
	{
		int totalReward = 0;
		foreach (RewardScript sc in listIfRewardScripts)
			totalReward += sc.hit_of_laser();
		isActive = false;
		return totalReward;
	}*/


}
