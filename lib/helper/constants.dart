import 'package:get/get.dart';

class Constants {
  //images
  static const String mainAssetImagesPath = 'assets/icons/';
  static const String logoImage = '${mainAssetImagesPath}logo.png';
  static const String headerImage = '${mainAssetImagesPath}header.png';
  static const String upoudImage = '${mainAssetImagesPath}upload.png';
  static const String loaderImage = '${mainAssetImagesPath}loader.gif';

  

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

  static String forgetPasswordNoQ = "Forget Password".tr;
  static String createNewAccount = "Create new account".tr;
  static String toChangeEnterMobile =
      "To change the password enter the mobile number that you used".tr;
  static String continueString = "Continue".tr;
  static String verificationCode = "Verification Code".tr;
  static String enterOTP = "Enter OTP code sent to".tr;
  static String didnotReseive = "Didn't receive?".tr;
  static String resend = "Resend".tr;
  static String verify = "Verify".tr;
  static String close = "Close".tr;
  static String resetPassword = "Reset Password".tr;
  static String confirmPassword = "Confirm Password".tr;
  static String reset = "Reset".tr;
  static String typeOfUse = "Select your type of use".tr;
  static String individuals = "Individuals".tr;
  static String business = "Business".tr;
  static String signUp = "Sign Up".tr;
  static String asIndividuals = "As Individuals".tr;
  static String optinal = "Optinal".tr;
  static String haveAccount = "Already have an account?".tr;
  static String fullName = "Full Name".tr;
  static String email = "Email".tr;
  static String asBusiness = "As Business".tr;
  static String businessLicense = "Business License".tr;
  static String purchaseEquipmentLicence = "Purchase equipment Licence".tr;
  static String thankYou = "Thank you".tr;
  static String doneRegisterText = "doneRegisterText".tr;
  static String toContactUs = "To Contact Us".tr;

//to update  strings when change language
  static void update() {
    thankYou = "Thank you".tr;
    doneRegisterText = "doneRegisterText".tr;
    toContactUs = "To Contact Us".tr;
    asBusiness = "As Business".tr;
    businessLicense = "Business License".tr;
    purchaseEquipmentLicence = "Purchase equipment Licence".tr;
    email = "Email".tr;
    fullName = "Full Name".tr;
    signUp = "Sign Up".tr;
    asIndividuals = "As Individuals".tr;
    optinal = "Optinal".tr;
    haveAccount = "Already have an account?".tr;
    typeOfUse = "Select your type of use".tr;
    individuals = "Individuals".tr;
    business = "Business".tr;
    reset = "Reset".tr;
    resetPassword = "Reset Password".tr;
    confirmPassword = "Confirm Password".tr;
    close = "Close".tr;
    verificationCode = "Verification Code".tr;
    enterOTP = "Enter OTP code sent to".tr;
    didnotReseive = "Didn't receive?".tr;
    resend = "Resend".tr;
    verify = "Verify".tr;
    toChangeEnterMobile =
        "To change the password enter the mobile number that you used".tr;
    continueString = "Continue".tr;
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
    forgetPasswordNoQ = "Forget Password".tr;
    createNewAccount = "Create new account".tr;
  }

//===============================================================================//

//Base  url for test
  //static String baseUrl = "https://dataocean-venus.com:4433/api/";

  static String getLanguage() {
    return Get.locale!.languageCode;
  }
}
