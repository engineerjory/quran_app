import 'package:flutter/material.dart';
import 'package:quran_app/screens/hadith_screen.dart';
import 'package:quran_app/screens/home_screen.dart';
import 'package:quran_app/screens/radio_screen.dart';
import 'package:quran_app/screens/sebha_screen.dart';
import 'package:quran_app/splash_screen.dart';
import 'package:quran_app/widgets/hadith_details.dart';
import 'package:quran_app/widgets/quran_screen.dart';
import 'package:quran_app/widgets/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran App ',
      routes: {
        SplashScreen.RouteName: (context) => SplashScreen(),
        HomeScreen.RouteName: (context) => HomeScreen(),
        SebhaScreen.RouteName: (context) => SebhaScreen(),
        HadithScreen.RouteName: (context) => HadithScreen(),
        RadioScreen.RouteName: (context) => RadioScreen(),
        QuranScreen.RouteName: (context) => QuranScreen(),
        SuraDetails.RouteName: (context) => SuraDetails(),
        HadithDetails.RouteName: (context) => HadithDetails(),
      },
      initialRoute: SplashScreen.RouteName,
    );
  }
}
