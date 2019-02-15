import 'package:flutter/material.dart';
import 'indoorPlan_Manager.dart';

void main() {
  runApp(IndoorPlan());
}

class IndoorPlan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndoorPlanState();
  }
}

class _IndoorPlanState extends State<IndoorPlan> {
  int position = 1;

  void moveBall(int newPosition) {
    setState(() { position = newPosition; });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Polygon"),
        ),
        body: IndoorPlanManger(),
      ),
    );
  }
}
