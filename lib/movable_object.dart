import 'package:flutter/material.dart';
import 'dashOutLine_Object_Painter.dart';
import 'object_control.dart';


class MovableBall extends StatelessWidget {
  const MovableBall(this.position, this.tablePosition, this.callback);

  final int position;
  final int tablePosition;
  final ValueChanged<int> callback;

  static final GlobalKey kBallKey = GlobalKey();
  static const double kBallSize = 50.0;

  @override
  Widget build(BuildContext context) {
    final Widget table = DefaultTextStyle(
        style: Theme.of(context).primaryTextTheme.body1,
        textAlign: TextAlign.center,
        child: ObjectCreation(
            key: kBallKey,
            color: Colors.blue.shade700,
            size: kBallSize,
            tappable: true,
            //child: const Center(child: Text('Table'))
        )
    );
    final Widget dashedTable = Container(
        width: kBallSize,
        height: kBallSize,
        child: const CustomPaint(
            painter: DashOutlineCirclePainter()
        )
    );
    if (position == tablePosition) {
      return Draggable<bool>(
          data: true,
          child: table,
          childWhenDragging: dashedTable,
          feedback: table,
          maxSimultaneousDrags: 1
      );
    } else {
      return DragTarget<bool>(
          onAccept: (bool data) { callback(position); },
          builder: (BuildContext context, List<bool> accepted, List<dynamic> rejected) {
            return dashedTable;
          }
      );
    }
  }
}

