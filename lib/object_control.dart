import 'package:flutter/material.dart';

class ObjectCreation extends StatefulWidget {
  const ObjectCreation({ Key key, this.color, this.size, this.child, this.tappable = false }) : super(key: key);

  final Color color;
  final double size;
  final Widget child;
  final bool tappable;

  @override
  ObjectCreationState createState() => ObjectCreationState();
}
class ObjectCreationState extends State<ObjectCreation> {
  int taps = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.tappable ? () { setState(() { taps += 1; }); } : null,
        child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
                color: widget.color,
                border: Border.all(width: taps.toDouble()),
                shape: BoxShape.rectangle
            ),
            child: widget.child
        )
    );
  }
}
