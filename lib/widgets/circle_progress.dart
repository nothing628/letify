import 'package:flutter/material.dart';
import 'dart:math';

class _CircleProgressPainter extends CustomPainter {
  final double progress;

  const _CircleProgressPainter({required this.progress}) : super();

  double getAngle(double width, double height) {
    double halfWidth = width / 2;
    double angle = 2 * atan(height / halfWidth);
    double addDegree = angle * .5;

    return angle - addDegree;
  }

  double getRadius(double width, double height) {
    double halfWidth = width / 2;
    double angle = getAngle(width, height) / 1.1;

    return halfWidth / sin(angle) / 2;
  }

  double getStartAngle(double width, double height) {
    double angle = getAngle(width, height);
    double transformAngle = angle * 2 + pi / 2;

    return transformAngle;
  }

  double getSweepAngle(double width, double height, double percent) {
    double angle = getAngle(width, height);

    return angle * -4 * percent;
  }

  double getYPosition(double diameter, double b, double top) {
    double radius = diameter / 2;
    double topPoint = radius - b;
    double yPoint = top - radius - topPoint;

    return yPoint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double b = 40;
    double r = getRadius(size.width, b);
    double d = r * 2;
    double t = getYPosition(d, b, size.height - 200);
    double startAngle = getStartAngle(size.width, b);
    double sweepAngle = getSweepAngle(size.width, b, progress);
    double fullSweepAngle = getSweepAngle(size.width, b, 1);

    Rect myCanvasSize = Rect.fromLTWH((d - size.width) * -0.5, t, d, d);
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

class CircleProgress extends StatelessWidget {
  final double progress;

  const CircleProgress({
    required this.progress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: const Center(),
      painter: _CircleProgressPainter(progress: progress),
    );
  }
}
