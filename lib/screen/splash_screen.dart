import 'package:flutter/material.dart';
import './product_tour_screen.dart';
import '../widgets/blurred_background.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  moveToTour(context) {
    Navigator.pushNamed(context, ProductTour.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        moveToTour(context);
      },
      child: BlurredBackground(
        child: Center(
            child: SizedBox(
          height: 100,
          child: Image.asset('assets/images/logo_with_text.png',
              fit: BoxFit.cover),
        )),
      ),
    ));
  }
}
