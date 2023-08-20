import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medcloud/helper/constants.dart';

class ChangeLanguageViewModel {
  bool toggel = false;
  GetStorage storage = GetStorage();
  Future<void> changeLanguage(
    BuildContext context,
  ) async {
    Constants.getLanguage() == "ar" ? toggel = true : toggel = false;
    toggel = !toggel;
    Get.updateLocale(Locale(toggel ? 'ar' : "en"));

    storage.write('lang', Get.locale!.languageCode);
    Constants.update();
  }

  Future<void> changeToArabic() async {
    Get.updateLocale(const Locale('ar'));
    storage.write('lang', 'ar');
    Constants.update();
  }

  Future<void> changeToEnglish() async {
    Get.updateLocale(const Locale('en'));
    storage.write('lang', 'en');
    Constants.update();
  }
}
