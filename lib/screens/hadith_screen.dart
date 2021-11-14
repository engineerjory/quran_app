import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/widgets/hadith_details.dart';
import 'package:quran_app/widgets/hadith_header.dart';
import 'package:quran_app/widgets/hadith_list_item.dart';
import 'package:quran_app/widgets/sura_list_item.dart';

class HadithScreen extends StatelessWidget {
  static final String RouteName = 'HadithScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/hadith_logo.png',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                HadithHeader(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              HadithDetails.RouteName,
                              arguments: index,
                            );
                          },
                          child: HadithListItem(index),

                          // child: SuraListItem(QuranData.ayatNumbers[index],
                          //     QuranData.quranNames[index]),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
