import 'package:flutter/material.dart';

class ClockHand extends StatelessWidget {
  final double rotationZAngle;
  final double handThickness;
  final double handLength;
  final Color color;

  const ClockHand(
      {Key? key,
      required this.rotationZAngle,
      required this.handThickness,
      required this.handLength,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(-handThickness / 2, 0.0, 0.0)
        ..rotateZ(rotationZAngle),
      alignment: Alignment.topCenter,
      child: Container(
        height: handLength,
        width: handThickness,
        color: color,
      ),
    );
  }
}
