import 'package:flutter/material.dart';
import '../helper/colors.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cardNumberStyle = TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.7,
        wordSpacing: 1.7);

    const labelStyle = TextStyle(color: AppColors.white, fontSize: 11);
    const contentStyle = TextStyle(color: AppColors.white, fontSize: 15);

    return Container(
      width: 254,
      height: 157,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: AppColors.cardGradient1,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              height: 30,
              image: AssetImage('icons/mastercard.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 21),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text('9999', style: cardNumberStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text('9999', style: cardNumberStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text('9999', style: cardNumberStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      '99XX',
                      style: cardNumberStyle,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Card Holder',
                      style: labelStyle,
                    ),
                    Text('Someone', style: contentStyle)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Expires', style: labelStyle),
                    Text('11/23', style: contentStyle)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
