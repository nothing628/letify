import 'dart:ui';
import 'package:flutter/material.dart';
import '../helper/colors.dart';

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

class _BottomNavigationItem extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool isActive;

  const _BottomNavigationItem(
      {Key? key,
      required this.label,
      this.iconPath = '',
      this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: const CircleBorder(), minimumSize: const Size(60, 60)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: const TextStyle(
                    color: AppColors.descPurple,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 7,
              ),
              const SizedBox(
                height: 3,
                width: 15,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [AppColors.blue, AppColors.accentPurple],
                          stops: [0, 0.6],
                          radius: 4)),
                ),
              )
            ],
          ));
    }

    return IconButton(
        onPressed: () {},
        icon: Image(
          height: 25,
          width: 25,
          image: AssetImage(iconPath),
        ));
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _BottomNavigationItem(
                        label: 'Home',
                        iconPath: 'icons/home.png',
                        isActive: true,
                      ),
                      _BottomNavigationItem(
                        label: 'Transaction',
                        iconPath: 'icons/wallet.png',
                        isActive: false,
                      ),
                      _BottomNavigationItem(
                          label: 'Add', iconPath: 'icons/add.png'),
                      _BottomNavigationItem(
                          label: 'Manage', iconPath: 'icons/manage.png'),
                      _BottomNavigationItem(
                          label: 'Report', iconPath: 'icons/report.png')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
