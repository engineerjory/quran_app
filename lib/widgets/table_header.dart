import 'package:flutter/cupertino.dart';

class TableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'عدد الايات',
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
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              ' اسم السورة',
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
                    left: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(183, 147, 95, 1.0),
                    ))),
          ),
        ),
      ],
    );
  }
}
