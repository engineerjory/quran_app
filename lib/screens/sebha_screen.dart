import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaScreen extends StatefulWidget {
  static final String RouteName = 'SebhaScreen';

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  double angle = 0;
  int index = 0;
  late List<String> zekr;

  @override
  Widget build(BuildContext context) {
    zekr = [
      AppLocalizations.of(context)!.sobhanAllah,
      AppLocalizations.of(context)!.alhamdoLelah,
      AppLocalizations.of(context)!.laElahaElaAllah,
      AppLocalizations.of(context)!.allahoAkbar,
    ];
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    //  margin: EdgeInsets.only(left: 40),
                    child: Image(
                      image: AssetImage(
                        'assets/images/sebha_head.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changeState();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.19),
                      child: Transform.rotate(
                        angle: angle,
                        child: Image(
                          image: AssetImage(
                            'assets/images/sebha_body.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                AppLocalizations.of(context)!.numOfTsbih,
                textDirection: TextDirection.rtl,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  " $counter",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(183, 147, 95, 1.0),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  zekr[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(183, 147, 95, 1.0),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeState() {
    counter++;
    angle += 20;
    if (counter % 33 == 0) {
      index++;
      if (index == zekr.length) index = 0;
    }
  }
}
