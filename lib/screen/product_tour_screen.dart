import 'package:flutter/material.dart';

class ProductTour extends StatelessWidget {
  static const routeName = '/tour';
  const ProductTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Product Tour'),
      ),
    );
  }
}
