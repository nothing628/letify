import 'package:flutter/material.dart';
import '../helper/colors.dart';

class TotalWallet extends StatelessWidget {
  const TotalWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total wallet',
            style: TextStyle(
                color: AppColors.darkPurple,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 72,
            width: double.maxFinite,
            decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.darkPurple.withOpacity(0.1), width: 1),
                borderRadius: BorderRadius.circular(23)),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text('\$34,222',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              foreground: Paint()
                                ..shader = AppColors.cardGradient2.createShader(
                                    Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                      Text('.99',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              foreground: Paint()
                                ..shader = AppColors.cardGradient2.createShader(
                                    Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))))
                    ],
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: Size(88, 41),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)),
                        elevation: 0,
                        backgroundColor: AppColors.transparentPurple,
                      ),
                      onPressed: () {},
                      child: Text('Allocate',
                          style: TextStyle(color: AppColors.descPurple)))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Income'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Spend'),
              )
            ],
          )
        ],
      ),
    );
  }
}
