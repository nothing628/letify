import 'package:flutter/material.dart';

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect firstOval = const Rect.fromLTWH(-106, 736, 530, 290);
    Rect secondOval = const Rect.fromLTWH(300, -120, 290, 530);
    Paint myPaint = Paint();

    myPaint.style = PaintingStyle.fill;
    myPaint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 200);
    myPaint.color = const Color.fromRGBO(217, 67, 255, 0.19);
    canvas.drawOval(firstOval, myPaint);

    myPaint.color = const Color.fromRGBO(255, 67, 168, 0.19);
    canvas.drawOval(secondOval, myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class BlurredBackground extends StatelessWidget {
  const BlurredBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: const Center(),
      painter: _BackgroundPainter(),
    );
  }
}
