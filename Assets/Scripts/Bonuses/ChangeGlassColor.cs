using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeGlassColor : MonoBehaviour {

	public GameObject[] glassForChange_V;
	public GameObject[] glassForChange_H;

	private bool isRun = false;		//Запущен ли бонус


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}


	//Произошел клик по стеклу
	public void click_on_glass(GameObject glassBlock)
    {
		if (isRun)
        {
			GlassBlockScript glassBlockScript = glassBlock.GetComponent<GlassBlockScript>();
			Transform parentGlass = glassBlock.transform.parent;
			GameObject newGlass = null;

			//Создать новый фильтр противоположного цвета
			if (glassBlockScript.color == COLOR_OF_VERTEX.COLOR1)
            {
				if (glassBlockScript.orientation == ORIENT_BLOCK.VERTICAL)
					newGlass = Instantiate(glassForChange_V[(int)COLOR_OF_VERTEX.COLOR2], parentGlass);
				else if (glassBlockScript.orientation == ORIENT_BLOCK.HORIZONTAL)
					newGlass = Instantiate(glassForChange_H[(int)COLOR_OF_VERTEX.COLOR2], parentGlass);
			} else if (glassBlockScript.color == COLOR_OF_VERTEX.COLOR2)
            {
				if (glassBlockScript.orientation == ORIENT_BLOCK.VERTICAL)
					newGlass = Instantiate(glassForChange_V[(int)COLOR_OF_VERTEX.COLOR1], parentGlass);
				else if (glassBlockScript.orientation == ORIENT_BLOCK.HORIZONTAL)
					newGlass = Instantiate(glassForChange_H[(int)COLOR_OF_VERTEX.COLOR1], parentGlass);
			}

			//Поместить новый филтр на место старого
			newGlass.transform.position = glassBlock.transform.position;
			//Удалить старый
			Destroy(glassBlock);
			Vibration.Vibrate(40);

			isRun = false;
		}
    }

	private void run_bonus ()
    {
		isRun = true;
    }

	//Активация бонуса по касанию
	public void OnMouseDown()
	{
		run_bonus();
		Vibration.Vibrate(40);
	}
}
