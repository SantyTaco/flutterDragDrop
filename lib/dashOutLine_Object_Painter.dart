import 'package:flutter/material.dart';
import 'dart:math' as math;

class DashOutlineCirclePainter extends CustomPainter {
  const DashOutlineCirclePainter();

  static const int segments = 17;
  static const double deltaTheta = math.pi * 2 / segments; // radians
  static const double segmentArc = deltaTheta / 2.0; // radians
  static const double startOffset = 1.0; // radians

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.shortestSide / 2.0;
    final Paint paint = Paint()
      ..color = Colors.blue[50]
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius / 10.0;
    final Path path = Path();
    var points = [Offset(0.0, 0.0), Offset(50.0, 0.0), Offset(50.0, 50.0), Offset(0.0, 50.0)];

    final Rect box = Offset.zero & size;
    for (double theta = 0.0; theta < math.pi * 2.0; theta += deltaTheta)
      //path.addArc(box, theta + startOffset, segmentArc);
      path.addPolygon(points, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(DashOutlineCirclePainter oldDelegate) => false;
}