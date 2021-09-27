import 'package:flutter/material.dart';

class BlurredBackground extends StatelessWidget {
  final Widget child;

  const BlurredBackground({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(-0.9, -0.6),
                  radius: 1,
                  colors: <Color>[
                    Color(0x33FF5A43),
                    Color(0x00000000),
                  ],
                  stops: <double>[0.0, 1.0],
                ),
              ),
            )),
        const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.9, 0.6),
                  radius: 1,
                  colors: <Color>[
                    Color(0x337F34DE),
                    Color(0x00000000),
                  ],
                  stops: <double>[0.0, 1.0],
                ),
              ),
            )),
        child,
      ],
    );
  }
}
