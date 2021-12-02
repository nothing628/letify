import 'package:flutter/material.dart';
import '../widgets/blurred_background.dart';
import '../widgets/app_logo.dart';
import '../helper/colors.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlurredBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppLogo(),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Text('Welcome back',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkPurple)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.descPurple)),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: TextField(
                        style: TextStyle(color: AppColors.darkPurple),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forgot password?',
                                textAlign: TextAlign.right,
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
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(90, 30),
                          primary: AppColors.transparentPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {},
                        child: const Text('Register',
                            style: TextStyle(color: AppColors.descPurple)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(150, 60),
                          primary: AppColors.purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {},
                        child: const Image(
                          image: AssetImage('assets/icons/right-white.png'),
                        ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
