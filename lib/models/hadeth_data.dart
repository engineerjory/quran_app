import 'package:flutter/services.dart';

class HadethData {
  static Future<String> loadHadith(int index) async {
    String hadith =
        await rootBundle.loadString('assets/hadith_content/h${index + 1}.txt');

    return hadith;
  }
  // static Future<String> readSora(int index) async {
  //   String sora = '';
  //   List<String> ayat = (await rootBundle.loadString('assets/quran_content/${index + 1}.txt'))
  //       .trim()
  //       .split('\n');
  //   for (int i = 0; i < ayat.length; i++) {
  //     sora += ayat[i].trim() + ' {${(i + 1)}} ';
  //   }
  //   return sora;
  // }
}
