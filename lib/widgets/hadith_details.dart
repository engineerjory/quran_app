import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/models/hadeth_data.dart';
import 'package:quran_app/models/quran_data.dart';
import 'package:quran_app/screens/hadith_screen.dart';

class HadithDetails extends StatefulWidget {
  static final String RouteName = 'HadithDetails';

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  late int index;
  String? hadith;
  List<String> hadithList = [];
  String hadithHeader = '';
  void loadHadith(index) async {
    hadith = await HadethData.loadHadith(index);

    setState(() {});
    List<String> hList = await hadith!.split('\n');

    hadithList += hList;

    hadithHeader += hadithList[0];

    hadithList.removeAt(0);
    hadith = hadithList.toString();
    //  print(hadith);
  }

  @override
  Widget build(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    if (hadith == null) loadHadith(index);
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
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
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
            elevation: 0,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "${hadithHeader}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    color: Color.fromRGBO(183, 147, 95, 1.0),
                    thickness: 2,
                  ),
                  Text(
                    " ${hadithList}",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
