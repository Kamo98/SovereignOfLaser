using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneTransition : MonoBehaviour
{

    public Text loadingPercentage;
    public Image loadingProgressBar;

    private static SceneTransition instance;

    private bool shouldPlayOpenningAnim;

    private Animator animator;
    private AsyncOperation loadingSceneOperation;

    //Плавное переключение между сценами
    public static void switch_to_scene(string sceneName)
    {
        instance.animator.SetTrigger("SceneClosing");

        //Начнём асинхронную загрузку сцены
        instance.loadingSceneOperation = SceneManager.LoadSceneAsync(sceneName);
        instance.loadingSceneOperation.allowSceneActivation = false;
    }


    void Start()
    {
        instance = this;
        animator = GetComponent<Animator>();
        shouldPlayOpenningAnim = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (loadingSceneOperation != null)
        {
            loadingPercentage.text = Mathf.RoundToInt(loadingSceneOperation.progress * 100) + "%";
            loadingProgressBar.fillAmount = loadingSceneOperation.progress;
            
            //Для загрузки новой сцены
            if (loadingSceneOperation.isDone && shouldPlayOpenningAnim)
                instance.animator.SetTrigger("SceneOpenning");
        }
    }

    public void OnAnimationClosingOver()
    {
        shouldPlayOpenningAnim = true;          //Сцену можно показывать, если она загрузилась
        loadingSceneOperation.allowSceneActivation = true;
    }

    public void OnAnimationOpeningOver()
    {
    }
}
