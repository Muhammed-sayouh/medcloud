import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';
import 'package:medcloud/ui/screens/auth/pin_code/pin_code_screen.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 0.07),
                ),
                Text(
                  Constants.forgetPassword,

                  style: getMediumStyle(fontSize: 34),
                ),
                const BigPadding(),
                Text(
                  Constants.toChangeEnterMobile,
                  textAlign: TextAlign.center,
                  style: getLightStyle(fontSize: 14),
                ),
                SizedBox(
                  height: height(context, 0.07),
                ),
                CustomTextFormField(
                  hint: Constants.mobileNumber,
                  titleText: Constants.mobileNumber,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.phone_android_rounded,
                    extraWidget: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [CountryCodeWidget(), Text("|")],
                    ),
                  ),
                ),
                
                 
                   
                SizedBox(
                  height: height(context, 0.04),
                ),
                CustomButton(
                  title: Constants.continueString,
                  widthRatio: 0.85,
                  onPressed: () => Navigators.getTo(context, const PinCodeScreen()),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

