import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';
import 'package:medcloud/ui/screens/auth/reset_password/reset_password_screen.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';

class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomScreen(
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 0.07),
                ),
                Text(
                  Constants.verificationCode,
                  style: getMediumStyle(fontSize: 34),
                ),
                const BigPadding(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${Constants.enterOTP} ",
                      textAlign: TextAlign.center,
                      style: getLightStyle(fontSize: 14),
                    ),
                    Text(
                      "+966 502491590",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: getLightStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context, 0.07),
                ),
                const PinCodeTextForm(),
              
                SizedBox(
                  height: height(context, 0.03),
                ),
                  Text(
                      "1:00",
                      textAlign: TextAlign.center,
                      style: getMediumStyle(fontSize: 14),
                    ),
                    const MediumPadding(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Constants.didnotReseive,
                      textAlign: TextAlign.center,
                      style: getMediumStyle(fontSize: 14),
                    ),
                    Text(
                      " ${Constants.resend}",
                      textAlign: TextAlign.center,
                      style: getMediumStyle(fontSize: 14 , color: AppColors.mediumGrayColor).copyWith(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                  SizedBox(
                  height: height(context, 0.04),
                ),
                CustomButton(
                  title: Constants.continueString,
                  widthRatio: 0.85,
                  onPressed: () => Navigators.getTo(context, ResetPasswordScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
