import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/cupertino.dart';

class HadithListItem extends StatelessWidget {
  int index;

  HadithListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: 3,
          color: Color.fromRGBO(183, 147, 95, 1.0),
        ),
      )),
      alignment: Alignment.center,
      child: Text(
        ' الحديث رقم' + '  ${ArabicNumbers().convert(index + 1)} ',
        //
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}
