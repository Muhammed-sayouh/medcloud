import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/screens/auth/forget_password/forget_password_screen.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';

import '../../../custom_widgets/text_form_icon_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        hideBack: true,
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            children: [
              SizedBox(
                height: height(context, 0.07),
              ),
              Text(
                Constants.logIn,
                style: getMediumStyle(fontSize: 34),
              ),
              SizedBox(
                height: height(context, 0.06),
              ),
              CustomTextFormField(
                hint: Constants.mobileNumber,
                titleText: Constants.mobileNumber,
                prefixText:  const TextFormIconsWidget(
                  iconData: Icons.phone_android_rounded,
                  extraWidget: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [CountryCodeWidget(), Text("|")],
                  ),
                ),
              ),
              SizedBox(
                height: height(context, 0.03),
              ),
              CustomTextFormField(
                hint: Constants.password,
                titleText: Constants.password,
                suffixIcon: Icons.remove_red_eye,
                enableSuffixIcon: true,
                prefixText: const TextFormIconsWidget(
                  iconData: Icons.lock_outlined,
                ),
              ),
              const SmallPadding(),
              Align(
                alignment: Constants.getLanguage() == 'ar'
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: InkWell(
                  onTap: () => Navigators.getTo(context, const ForgetPasswordScreen()),
                  child: Text(
                    "${Constants.forgetPassword}?",
                    style: getMediumStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: height(context, 0.04
                ),
              ),
              CustomButton(title: Constants.login,widthRatio: 0.85,),
              const MediumPadding(),
              Text(
                  Constants.createNewAccount,
                  
                  style: getMediumStyle(fontSize: 16,color: AppColors.blueColor).copyWith(decoration: TextDecoration.underline),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
