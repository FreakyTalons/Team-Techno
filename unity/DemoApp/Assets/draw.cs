using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class draw : MonoBehaviour
{
    public AINavMovement path;
    LineRenderer line;

    void Start()
    {
        line = GetComponent<LineRenderer>();
    }


    void Update()
    {
        line.positionCount = path.cornerCount;
        line.SetPositions(path.pathCorners);
    }
}
