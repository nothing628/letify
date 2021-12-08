import 'dart:ui';
import 'package:flutter/material.dart';

class _BottomNavigationPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint customPaint = Paint();

    customPaint.maskFilter = const MaskFilter.blur(BlurStyle.inner, 12);
    customPaint.color = Colors.white70;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 1,
        child: SizedBox(
          width: data.size.height,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 90),
            child: Material(
              type: MaterialType.transparency,
              child: CustomPaint(
                painter: _BottomNavigationPainter(),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [Text('1'), Text('2')],
                  ),
                ),
              ),
            ),
          ),
        ));
    // return BottomNavigationBar(elevation: 1, items: [
    //   BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Home'),
    //   BottomNavigationBarItem(
    //       icon: Icon(Icons.access_alarm), label: 'Transaction'),
    //   BottomNavigationBarItem(
    //       icon: Icon(Icons.access_alarm), label: 'Add Transaction'),
    //   BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Manage'),
    //   BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Profile')
    // ]);
  }
}
