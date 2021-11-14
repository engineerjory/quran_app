import 'package:flutter/cupertino.dart';

class HadithHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        ' الاحاديث',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 3,
            color: Color.fromRGBO(183, 147, 95, 1.0),
          ),
          bottom: BorderSide(
            width: 3,
            color: Color.fromRGBO(183, 147, 95, 1.0),
          ),
          // right: BorderSide(
          //   width: 3,
          //   color: Color.fromRGBO(183, 147, 95, 1.0),
          // ),
        ),
      ),
    );
  }
}
