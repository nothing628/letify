import 'dart:html';

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
          const CircleProgress(
            progress: 1 / 3,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 48,
                        height: 48,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fixedSize: const Size(100, 32),
                            primary: const Color.fromRGBO(185, 172, 188, 0.3)),
                        onPressed: () {},
                        child: const Text('Skip',
                            style: TextStyle(
                                color: Color.fromRGBO(80, 66, 108, 0.8))),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                      width: 300,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            child: Image.asset(
                              'assets/images/illustration_1.png',
                              scale: 0.1,
                              height: 290,
                            ),
                            padding: const EdgeInsets.only(bottom: 35),
                          ),
                          const Padding(
                            child: Text(
                              'Save for your future!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(36, 15, 81, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                            padding: EdgeInsets.only(bottom: 15),
                          ),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(80, 66, 108, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size(150, 60),
                        primary: const Color.fromRGBO(185, 172, 188, 0.3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {},
                      child: const Text('Next',
                          style: TextStyle(
                              color: Color.fromRGBO(80, 66, 108, 0.8))),
                    ),
                    width: double.infinity,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
