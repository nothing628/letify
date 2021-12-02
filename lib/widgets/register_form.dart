import 'package:flutter/material.dart';
import '../helper/colors.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: TextField(
              style: TextStyle(color: AppColors.darkPurple),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Full name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30),
            child: TextField(
              style: TextStyle(color: AppColors.darkPurple),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30),
            child: TextField(
              style: TextStyle(color: AppColors.darkPurple),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('By signing up you are agree to our',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: AppColors.darkPurple)),
                TextButton(
                  onPressed: () {},
                  child: const Text('Terms and Service',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColors.darkPurple,
                          fontWeight: FontWeight.w700)),
                )
              ],
            ),
          )
        ],
      ),
      flex: 1,
    );
  }
}
