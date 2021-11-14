import 'package:flutter/material.dart';
import 'package:quran_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static final String RouteName = "splashScreen";

  @override
  Widget build(BuildContext context) {
    navigateToHome(HomeScreen.RouteName, context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/splash.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  void navigateToHome(String routeName, BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, routeName);
    });
  }
}
