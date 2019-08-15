using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpassableBlock : MonoBehaviour {

	public GameObject particleForHit;
	public Material materialForParticle;


	public void hit_of_laser(Vector3 pointOfHit)
	{
		if (particleForHit != null)
		{
			GameObject particleObj = Instantiate(particleForHit);
			Renderer rendererParticle = particleObj.GetComponent<ParticleSystem>().GetComponent<Renderer>();
			rendererParticle.material = materialForParticle;
			particleObj.transform.position = pointOfHit;
			Destroy(particleObj, 0.5f);
		}
	}
}
