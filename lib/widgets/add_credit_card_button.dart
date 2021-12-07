import 'package:flutter/material.dart';
import '../helper/colors.dart';

class AddCreditCardButton extends StatelessWidget {
  const AddCreditCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            primary: AppColors.transparentPurple),
        onPressed: () {},
        child: const Image(
          image: AssetImage('assets/icons/plus.png'),
        ),
      ),
    );
  }
}
