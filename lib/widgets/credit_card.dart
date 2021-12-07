import 'package:flutter/material.dart';
import '../helper/colors.dart';

enum CreditCardStyles { style1, style2 }
enum CreditCardTypes { visa, mastercard }

class CreditCard extends StatelessWidget {
  final String cardHolder;
  final String cardNumber;
  final String cardExpired;
  final CreditCardStyles style;
  final CreditCardTypes type;

  const CreditCard(
      {Key? key,
      required this.cardHolder,
      required this.cardExpired,
      required this.cardNumber,
      this.style = CreditCardStyles.style1,
      this.type = CreditCardTypes.mastercard})
      : super(key: key);

  Gradient getCardGradient() {
    if (style == CreditCardStyles.style1) return AppColors.cardGradient1;

    return AppColors.cardGradient2;
  }

  String getCardIconPath() {
    if (type == CreditCardTypes.mastercard) return 'icons/mastercard.png';

    return 'icons/visa.png';
  }

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
    Gradient boxGradient = getCardGradient();
    String assetIconPath = getCardIconPath();

    var cardNumberSegment1 = cardNumber.substring(0, 4);
    var cardNumberSegment2 = cardNumber.substring(4, 8);
    var cardNumberSegment3 = cardNumber.substring(8, 12);
    var cardNumberSegment4 = cardNumber.substring(12, 14) + 'XX';

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 254,
        height: 157,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: boxGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 30,
                image: AssetImage(assetIconPath),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 21),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(cardNumberSegment1, style: cardNumberStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(cardNumberSegment2, style: cardNumberStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(cardNumberSegment3, style: cardNumberStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        cardNumberSegment4,
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
                    children: [
                      const Text(
                        'Card Holder',
                        style: labelStyle,
                      ),
                      Text(cardHolder, style: contentStyle)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Expires', style: labelStyle),
                      Text(cardExpired, style: contentStyle)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
