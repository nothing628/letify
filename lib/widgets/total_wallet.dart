import 'package:flutter/material.dart';
import '../helper/colors.dart';

class TotalWallet extends StatelessWidget {
  const TotalWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const gradientRect = Rect.fromLTWH(0.0, 0.0, 200.0, 100.0);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total wallet',
            style: TextStyle(
                color: AppColors.darkPurple,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
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
              padding: const EdgeInsets.all(15),
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
                                ..shader = AppColors.cardGradient2
                                    .createShader(gradientRect))),
                      Text('.99',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              foreground: Paint()
                                ..shader = AppColors.cardGradient2
                                    .createShader(gradientRect)))
                    ],
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(88, 41),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)),
                        elevation: 0,
                        backgroundColor: AppColors.transparentPurple,
                      ),
                      onPressed: () {},
                      child: const Text('Allocate',
                          style: TextStyle(color: AppColors.descPurple)))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    height: 72,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: AppColors.incomeGradient,
                        borderRadius: BorderRadius.circular(23)),
                    child: Row(
                      children: [
                        Container(
                          width: 41,
                          height: 41,
                          decoration: BoxDecoration(
                              gradient: AppColors.incomeIconGradient,
                              borderRadius: BorderRadius.circular(13)),
                          child: const Image(
                              image: AssetImage('assets/icons/up.png')),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Income',
                                style: TextStyle(
                                    color: AppColors.softPurple,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700)),
                            Text('+\$4,222',
                                style: TextStyle(
                                    foreground: Paint()
                                      ..shader = AppColors.incomeIconGradient
                                          .createShader(gradientRect),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    height: 72,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: AppColors.spendGradient,
                        borderRadius: BorderRadius.circular(23)),
                    child: Row(
                      children: [
                        Container(
                          width: 41,
                          height: 41,
                          decoration: BoxDecoration(
                              gradient: AppColors.spendIconGradient,
                              borderRadius: BorderRadius.circular(13)),
                          child: const Image(
                              image: AssetImage('assets/icons/down.png')),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Spend',
                                style: TextStyle(
                                    color: AppColors.softPurple,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700)),
                            Text('-\$4,222',
                                style: TextStyle(
                                    foreground: Paint()
                                      ..shader = AppColors.spendIconGradient
                                          .createShader(gradientRect),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
