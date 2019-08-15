using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CanvasPauseScript : MonoBehaviour {

	private CameraControl cameraControl;

	private void Awake()
	{
		cameraControl = Camera.main.GetComponent<CameraControl>();
	}

	public void animation_complete ()
	{
		cameraControl.resume_move();
		Destroy(gameObject);
	}

	public void animation_begin ()
	{
		cameraControl.full_break();
	}
	
}
