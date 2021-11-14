import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RadioScreen extends StatelessWidget {
  static final String RouteName = 'RadioScreen';

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/radio_image.png',
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'اذاعة القران الكريم',
                textDirection: TextDirection.rtl,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/icons/prev_icon.png'),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/icons/play_icon.png'),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/icons/next_icon.png'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    )
        //BaseWidget(body()),
        );
  }
}
