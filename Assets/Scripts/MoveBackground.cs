using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveBackground : MonoBehaviour {

	public float koefOfParallax;

	private Rigidbody2D rb;
	private Rigidbody2D rbCamera;
	private Vector2 moveVelocity;
	private CameraControl cameraControl;

	// Use this for initialization
	void Awake () {
		rb = GetComponent<Rigidbody2D>();
		cameraControl = Camera.main.GetComponent<CameraControl>();
		rbCamera = cameraControl.GetComponent<Rigidbody2D>();
	}
	
	// Update is called once per frame
	void Update () {
		rb.simulated = rbCamera.simulated;
		moveVelocity = cameraControl.get_velocity() / koefOfParallax;
	}

	private void FixedUpdate()
	{
		rb.MovePosition(rb.position + moveVelocity * Time.fixedDeltaTime);
	}
}
