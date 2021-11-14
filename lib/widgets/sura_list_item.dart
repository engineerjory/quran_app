import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/cupertino.dart';

class SuraListItem extends StatelessWidget {
  // final String ayatNumbers;
  final int ayatNumbers;
  final String ayatNames;

  SuraListItem(this.ayatNumbers, this.ayatNames);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              '${ArabicNumbers().convert(ayatNumbers)}',
              // '${ayatNumbers[index]}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              // ' ${quranNames[index]}',
              ayatNames,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                width: 3,
                color: Color.fromRGBO(183, 147, 95, 1.0),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
