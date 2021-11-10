import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String RouteName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentScreenIndex;

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
          elevation: 0,
          title: Center(
            child: Text(
              'اسلامي',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          //  Theme(
          // data: Theme.of(context).copyWith(
          //   // sets the background color of the `BottomNavigationBar`
          //   canvasColor: Color.fromRGBO(183, 147, 95, 1.0),
          // ),
          //  child:
          //BottomNavigationBar(
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

        //  ),
      ),
    );
  }
}
