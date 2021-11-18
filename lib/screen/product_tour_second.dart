import 'package:flutter/material.dart';
import './product_tour_first.dart';
import './product_tour_third.dart';
import '../widgets/blurred_background.dart';
import '../widgets/circle_progress.dart';
import '../helper/colors.dart';

class ProductTourSecond extends StatelessWidget {
  static const routeName = '/tour/2';
  const ProductTourSecond({Key? key}) : super(key: key);

  moveToNextPage(context) {
    Navigator.pushNamed(context, ProductTourThird.routeName);
  }

  moveToPrevPage(context) {
    Navigator.pushNamed(context, ProductTourFirst.routeName);
  }

  skipTour(context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlurredBackground(),
          const CircleProgress(
            progress: 2 / 3,
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
                            primary: AppColors.transparentPurple),
                        onPressed: () {
                          skipTour(context);
                        },
                        child: const Text('Skip',
                            style: TextStyle(color: AppColors.descPurple)),
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
                              'assets/images/illustration_2.png',
                              scale: 0.1,
                              height: 290,
                            ),
                            padding: const EdgeInsets.only(bottom: 35),
                          ),
                          const Padding(
                            child: Text(
                              'Track your spend and income',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.darkPurple,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                            padding: EdgeInsets.only(bottom: 15),
                          ),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.descPurple,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: const Size(60, 60),
                              primary: AppColors.transparentPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              moveToPrevPage(context);
                            },
                            child: const Image(
                              image: AssetImage('assets/icons/left.png'),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    fixedSize: const Size(150, 60),
                                    primary: AppColors.transparentPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  onPressed: () {
                                    moveToNextPage(context);
                                  },
                                  child: const Text('Next',
                                      style: TextStyle(
                                          color: AppColors.descPurple)),
                                ),
                                width: double.infinity,
                              ),
                            ))
                      ],
                    ),
                    height: 80,
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
