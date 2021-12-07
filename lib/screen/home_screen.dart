import 'package:flutter/material.dart';
import '../widgets/blurred_background.dart';
import '../widgets/credit_card.dart';
import '../widgets/total_wallet.dart';
import '../widgets/add_credit_card_button.dart';
import '../helper/colors.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const BlurredBackground(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Welcome back,',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.descPurple),
                        ),
                      ),
                      Text(
                        'Jason Wilson',
                        style: TextStyle(
                            color: AppColors.darkPurple,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  )
                ],
              ),
              const SizedBox(
                width: double.maxFinite,
                height: 30,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AddCreditCardButton(),
                    CreditCard(
                      cardExpired: '12/21',
                      cardHolder: 'Bambank',
                      cardNumber: '1234123412341234',
                      style: CreditCardStyles.style1,
                      type: CreditCardTypes.mastercard,
                    ),
                    CreditCard(
                      cardExpired: '12/21',
                      cardHolder: 'Bambank',
                      cardNumber: '1234123412341234',
                      style: CreditCardStyles.style2,
                      type: CreditCardTypes.visa,
                    )
                  ],
                ),
              ),
              const TotalWallet()
            ],
          ),
        )
      ]),
    );
  }
}
