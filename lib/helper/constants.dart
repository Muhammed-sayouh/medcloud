import 'package:get/get.dart';

class Constants {
  //images
  static const String mainAssetImagesPath = 'assets/icons/';
  static const String logoImage = '${mainAssetImagesPath}logo.png';
  static const String headerImage = '${mainAssetImagesPath}header.png';

  //Strings
  static String loginSignUp = "Log in / Sign up".tr;
  static String language = "Language".tr;
  static String aboutUs = "About Us".tr;
  static String termsAndConditions = "Terms & Conditions".tr;
  static String qA = "Q & A".tr;
  static String logIn = "Log In".tr;
  static String login = "Login".tr;
  static String mobileNumber = "Mobile Number".tr;
  static String password = "Password".tr;
  static String forgetPassword = "Forget Password?".tr;
  static String createNewAccount = "Create new account".tr;

//to update  strings when change language
  static void update() {
    loginSignUp = "Log in / Sign up".tr;
    language = "Language".tr;
    aboutUs = "About Us".tr;
    termsAndConditions = "Terms & Conditions".tr;
    qA = "Q & A".tr;
    logIn = "Log In".tr;
    login = "Login".tr;
    mobileNumber = "Mobile Number".tr;
    password = "Password".tr;
    forgetPassword = "Forget Password?".tr;
    createNewAccount = "Create new account".tr;
  }

//===============================================================================//

//Base  url for test
  //static String baseUrl = "https://dataocean-venus.com:4433/api/";

  static String getLanguage() {
    return Get.locale!.languageCode;
  }
}
