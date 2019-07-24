using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RewardScript : MonoBehaviour {

	public int Reward;

	private bool isActive;


	private void Start()
	{
		isActive = true;
	}

	public bool is_active()
	{
		return isActive;
	}

	public int destroy_reward ()
	{
		int ret = Reward;
		Reward = 0;
		isActive = false;
		return ret;
	}
}
