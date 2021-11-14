import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/models/quran_data.dart';
import 'package:quran_app/widgets/sura_details.dart';
import 'package:quran_app/widgets/sura_list_item.dart';
import 'package:quran_app/widgets/table_header.dart';

class QuranScreen extends StatelessWidget {
  static final String RouteName = 'QuranScreen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image(
              image: AssetImage('assets/images/moshafimage.png'),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  TableHeader(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: QuranData.quranNames.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                SuraDetails.RouteName,
                                arguments: index,
                              );
                            },
                            child: SuraListItem(QuranData.ayatNumbers[index],
                                QuranData.quranNames[index]),
                          );
                        }),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
