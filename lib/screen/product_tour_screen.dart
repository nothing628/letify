import 'package:flutter/material.dart';
import '../widgets/blurred_background.dart';
import '../widgets/circle_progress.dart';

class ProductTour extends StatelessWidget {
  static const routeName = '/tour';
  const ProductTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlurredBackground(
          child: Stack(
        children: const [
          CircleProgress(),
          Center(
            child: Text('Product Tour'),
          )
        ],
      )),
    );
  }
}
