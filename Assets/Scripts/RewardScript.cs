using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class RewardScript : MonoBehaviour {

	public int Reward;
	public float speed;

	private bool isActive;

	private GameController gameController;
	private Animator animator;
	private AudioSource soundHitOfLaser;

	private void Awake()
	{
		gameController = Camera.main.GetComponent<GameController>();
		animator = GetComponent<Animator>();
		soundHitOfLaser = GetComponent<AudioSource>();
	}

	private void Start()
	{
		isActive = true;
	}

	private void Update()
	{
		if (animator.GetCurrentAnimatorStateInfo(0).IsName("destroy"))
		{
			Destroy(gameObject);
		}
	}


	public void hit_of_laser()
	{
		isActive = false;
		animator.SetBool("HitLaser", true);
		gameController.add_to_score(Reward);
		Vibration.Vibrate(120);
		soundHitOfLaser.Play();
	}

	/*public int hit_of_laser()
	{
		isActive = false;
		animator.SetBool("HitLaser", true);
		return Reward;
	}*/


	public bool is_active()
	{
		return isActive;
	}
}
