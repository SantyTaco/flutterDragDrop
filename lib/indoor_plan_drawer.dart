import 'package:flutter/material.dart';
import 'dart:ui';
class IndoorPlanDrawer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    var points1 = [Offset(0.0, 0.0), Offset(330.0, 0.0), Offset(330.0, 400.0), Offset(100.0, 400.0), Offset(100.0, 500.0), Offset(0.0, 500.0), Offset(0.0, 0.0)];
    var points2 = [Offset(5.0, 5.0), Offset(20.0,5.0), Offset(20.0, 10.0), Offset(5.0, 10.0)];

    List points = [];

    points.add(points1);
    //points.add(points2);


    for(int i=0; i < points.length; i++ ) {
      path.addPolygon(points[i], true);
      Paint paint = Paint();
      /*paint.style = PaintingStyle.fill;
    paint.color = Color.fromRGBO(255, 0, 0, 1.0);
    canvas.drawPath(path, paint);*/


      paint.style = PaintingStyle.stroke;
      paint.strokeWidth = 2.0;
      paint.strokeJoin = StrokeJoin.round;
      paint.color = Color.fromRGBO(150, 150, 150, 1.0);
      canvas.drawPath(path, paint);
    }
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}