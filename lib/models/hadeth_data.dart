import 'package:flutter/services.dart';

class HadethData {
  static Future<String> loadHadith(int index) async {
    String hadith =
        await rootBundle.loadString('assets/hadith_content/h${index + 1}.txt');

    return hadith;
  }
}
