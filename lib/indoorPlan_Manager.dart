import 'package:flutter/material.dart';
import 'movable_object.dart';
import 'indoor_plan_drawer.dart';

class IndoorPlanManger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IndoorPlanManagerState();
  }
}

class IndoorPlanManagerState extends State<IndoorPlanManger> {
  int position = 1;

  void moveBall(int newPosition) {
    setState(() {
      position = newPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: CustomPaint(
        painter: IndoorPlanDrawer(),
        child: Container(
          margin: EdgeInsets.all(2.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MovableBall(1, position, moveBall),
              MovableBall(2, position, moveBall),
              MovableBall(3, position, moveBall),
              MovableBall(4, position, moveBall),
              MovableBall(5, position, moveBall),
              MovableBall(6, position, moveBall),

            ],
          ),
        )
      ),
    );
  }
}
