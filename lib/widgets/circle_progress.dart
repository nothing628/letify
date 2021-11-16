import 'package:flutter/material.dart';
import 'dart:math';

class _MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect myCanvasSize =
        Rect.fromLTRB(-75, 0, size.width + 75, size.width + 150);
    Paint myPaint = Paint();

    myPaint.color = const Color.fromRGBO(195, 60, 232, 1);
    myPaint.style = PaintingStyle.stroke;
    myPaint.strokeWidth = 6;

    canvas.drawArc(myCanvasSize, 0, pi, false, myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CircleProgress extends StatefulWidget {
  const CircleProgress({Key? key}) : super(key: key);

  @override
  State<CircleProgress> createState() => _CircleProgress();
}

class _CircleProgress extends State<CircleProgress> {
  // int _progress = 50;

  // void _incrementCounter() {
  //   setState(() {
  //     _progress++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: const Center(),
      painter: _MyCustomPainter(),
    );
  }
}
