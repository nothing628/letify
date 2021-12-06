import 'package:flutter/material.dart';
import './screen/home_screen.dart';
import './screen/splash_screen.dart';
import './screen/product_tour_first.dart';
import './screen/product_tour_second.dart';
import './screen/product_tour_third.dart';
import './screen/login_screen.dart';
import './screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        ProductTourFirst.routeName: (context) => const ProductTourFirst(),
        ProductTourSecond.routeName: (context) => const ProductTourSecond(),
        ProductTourThird.routeName: (context) => const ProductTourThird(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
      },
    );
  }
}
