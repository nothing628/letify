import 'package:flutter/material.dart';
import '../widgets/blurred_background.dart';
import '../widgets/app_logo.dart';
import '../widgets/register_form.dart';
import '../helper/colors.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BlurredBackground(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AppLogo(),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Text('Create an account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkPurple)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.descPurple)),
            ),
            RegisterForm()
          ],
        )
      ],
    ));
  }
}
