import 'package:get_storage/get_storage.dart';


class GetStorageHelper {


  static String language() {
    GetStorage getStorage = GetStorage();
    String lang;
    if (getStorage.read('lang') == null) {
      return '';
    } else {
      lang = getStorage.read('lang') ?? '';
      return lang;
    }
  }


}
