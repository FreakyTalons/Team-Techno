using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using System;

public class AINavMovement : MonoBehaviour {
    public int index;
    public Transform destination1;
    public Transform destination2;
    public Transform destination3;
    public NavMeshAgent player;
    public Vector3[] pathCorners;
    public int cornerCount;

    public void updateDestination(String index) {
        this.index = int.Parse(index);
    }

    void Start()
    {
        index = 0;
        player.isStopped = true;
    }
    void Update()
    {
        Transform destination;
    switch(index){
        case 0:
                destination = destination1;
                break;
            case 1:
                destination = destination2;
                break;
            case 2:
                destination = destination3;
                break;

            default:
                destination = destination1;
                break;
}
    player.SetDestination(destination.position);

        NavMeshPath path = new NavMeshPath();
        pathCorners = new Vector3[30];
        player.CalculatePath(destination.position, path);
        cornerCount = path.GetCornersNonAlloc(pathCorners);
        pathCorners = new Vector3[cornerCount];
        path.GetCornersNonAlloc(pathCorners);
    }
}