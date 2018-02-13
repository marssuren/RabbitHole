using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EarthController : MonoBehaviour
{
	private bool onDrag = false;  //是否被拖拽//    
	public float speed = 6f;   //旋转速度//    
	private float tempSpeed;   //阻尼速度// 
	private float axisX = 1;
	//鼠标沿水平方向移动的增量//   
	private float axisY = 1;    //鼠标沿竖直方向移动的增量//   
	private float cXY;
	void OnMouseDown()
	{
		axisX = 0;
		axisY = 0;
	}
	void OnMouseDrag()     //鼠标拖拽时的操作// 
	{
		axisX = -Input.GetAxis("Mouse X");
		//获得鼠标增量// 
		axisY = Input.GetAxis("Mouse Y");
		transform.Rotate(new Vector3(axisY, 0, axisX), Space.World);
	}
}
