import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/screens/radio_screen.dart';
import 'package:quran_app/screens/sebha_screen.dart';
import 'package:quran_app/widgets/quran_screen.dart';
import 'package:quran_app/widgets/sura_details.dart';

import 'hadith_screen.dart';

class HomeScreen extends StatefulWidget {
  static final String RouteName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentScreenIndex;
  List screens = [
    RadioScreen(),
    SebhaScreen(),
    HadithScreen(),
    QuranScreen(),
  ];

  @override
  void initState() {
    super.initState();
    currentScreenIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: (AssetImage(
            'assets/images/background.png',
          )),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          //to color the app bar icons like(wifi,clock,battery) with black color
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
          elevation: 0,
          title: Center(
            child: Text(
              'islamy',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(183, 147, 95, 1.0),
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontSize: 20),
          iconSize: 33,
          currentIndex: currentScreenIndex,
          onTap: (index) {
            setState(() {
              currentScreenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/radio_blue.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/hadith.png')),
                label: 'Hadith'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/moshaf_blue.png')),
                label: 'Quran'),
          ],
        ),
        body: screens[currentScreenIndex],

        //changeItem(currentScreenIndex),

        //QuranScreen(),

        //  ),
      ),
    );
  }

  Widget changeItem(int index) {
    if (index == 0) {
      return RadioScreen();
    } else if (index == 1) {
      return SebhaScreen();
    } else if (index == 2) {
      return HadithScreen();
    } else {
      return QuranScreen();
    }
  }
}
