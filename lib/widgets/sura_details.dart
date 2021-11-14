import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/models/quran_data.dart';

class SuraDetails extends StatefulWidget {
  static final String RouteName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late int index;
  String sora = '';

  void loadSura(int index) async {
    sora = await QuranData.readSora(index);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    if (sora.isEmpty) loadSura(index);

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
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20)
                .add(EdgeInsets.only(bottom: 30)),
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "سورة " + QuranData.quranNames[index],
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(183, 147, 95, 1.0),
                  thickness: 2,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: sora.isEmpty
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Color.fromRGBO(183, 147, 95, 1.0),
                          ))
                        : Text(
                            sora,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 20,
                              height: 2,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
