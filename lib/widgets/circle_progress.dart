import 'package:flutter/material.dart';
import 'dart:math';

class _MyCustomPainter extends CustomPainter {
  double getStartAngle(double r, double c) {
    double sinValue = (c * 0.5) / r;
    double theta = asin(sinValue * 2);

    return theta + pi / 2 + 0.1;
  }

  double getSweepAngle(double r, double c, double percent) {
    double sinValue = (c * 0.5) / r;
    double theta = asin(sinValue * 2);

    return (theta * percent * -2.2);
  }

  @override
  void paint(Canvas canvas, Size size) {
    double r = size.width + 150;
    double c = size.width;
    double startAngle = getStartAngle(r, c);
    double sweepAngle = getSweepAngle(r, c, 0.5);
    double fullSweepAngle = getSweepAngle(r, c, 1);

    Rect myCanvasSize =
        Rect.fromLTRB(-75, 0, size.width + 75, size.width + 150);
    Paint myPaint = Paint();

    // Draw empty line
    myPaint.style = PaintingStyle.stroke;
    myPaint.strokeCap = StrokeCap.round;
    myPaint.color = const Color.fromRGBO(36, 15, 81, .1);
    myPaint.strokeWidth = 1;
    canvas.drawArc(myCanvasSize, startAngle, fullSweepAngle, false, myPaint);

    myPaint.color = const Color.fromRGBO(195, 60, 232, 1);
    myPaint.strokeWidth = 6;
    canvas.drawArc(myCanvasSize, startAngle, sweepAngle, false, myPaint);
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
