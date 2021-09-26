import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
                    Color(0x22FF5A43),
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
                    Color(0x227F34DE),
                    Color(0x00000000),
                  ],
                  stops: <double>[0.0, 1.0],
                ),
              ),
            )),
        Center(
            child: SizedBox(
          height: 100,
          child: Image.asset('assets/images/logo_with_text.png',
              fit: BoxFit.cover),
        )),
      ],
    ));
  }
}
