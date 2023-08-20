import 'package:get/get.dart';
import 'package:medcloud/helper/Language/ar.dart';
import 'package:medcloud/helper/Language/en.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'ar': getArabicLanguage(), 'en': getEnglishLanguage()};
}
