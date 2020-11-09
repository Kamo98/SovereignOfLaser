using System.Collections;
using System.Collections.Generic;
using System.Xml.Serialization;
using UnityEngine;

public class ScrollControl : MonoBehaviour {

	RectTransform rectTrans;
	
	private void Awake()
    {
		rectTrans = GetComponent<RectTransform>();
    }

	void Update () {
		//Оганичение выхода списка уровней за верхнюю границу
		if (rectTrans.offsetMax.y < 0.0f)
		{
			rectTrans.offsetMax = new Vector2(rectTrans.offsetMax.x, 0.0f);
			rectTrans.offsetMin = new Vector2(rectTrans.offsetMin.x, 0.0f);
		}

		//Оганичение выхода списка уровней за нижнюю границу
		if (rectTrans.offsetMax.y > 500.0f)
		{
			rectTrans.offsetMax = new Vector2(rectTrans.offsetMax.x, 500.0f);
			rectTrans.offsetMin = new Vector2(rectTrans.offsetMin.x, 500.0f);
		}
	}

	public void inc_scroll_position(float deltaY)
    {
		rectTrans.offsetMax = new Vector2(rectTrans.offsetMax.x, rectTrans.offsetMax.y + deltaY);
		rectTrans.offsetMin = new Vector2(rectTrans.offsetMin.x, rectTrans.offsetMin.y + deltaY);
	}
}
