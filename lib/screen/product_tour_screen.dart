import 'package:flutter/material.dart';
import '../widgets/blurred_background.dart';
import '../widgets/circle_progress.dart';

class ProductTour extends StatelessWidget {
  static const routeName = '/tour';
  const ProductTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlurredBackground(),
          const CircleProgress(),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/illustration_1.png',
                  scale: 0.1,
                  height: 290,
                ),
                const Text(
                  'Save for your future!',
                  style: TextStyle(
                      color: Color.fromRGBO(36, 15, 81, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
                    style: TextStyle(
                        color: Color.fromRGBO(80, 66, 108, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500))
              ],
            ),
          )
        ],
      ),
    );
  }
}
