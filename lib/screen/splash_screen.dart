import 'package:flutter/material.dart';
import 'product_tour_first.dart';
import '../widgets/blurred_background.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  moveToTour(context) {
    Navigator.pushNamed(context, ProductTourFirst.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        moveToTour(context);
      },
      child: Stack(
        children: [
          const BlurredBackground(),
          Center(
              child: SizedBox(
            height: 100,
            child: Image.asset('assets/images/logo_with_text.png',
                fit: BoxFit.cover),
          ))
        ],
      ),
    ));
  }
}
