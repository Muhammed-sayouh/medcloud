import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';

class RegisterIndividualsScreen extends StatelessWidget {
  const RegisterIndividualsScreen({super.key});

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
                  Constants.signUp,
                  style: getMediumStyle(fontSize: 34),
                ),
                const BigPadding(),
                Text(
                  Constants.asIndividuals,
                  textAlign: TextAlign.center,
                  style: getLightStyle(fontSize: 14),
                ),
                SizedBox(
                  height: height(context, 0.06),
                ),
                CustomTextFormField(
                  hint: Constants.fullName,
                  titleText: Constants.fullName,
                  prefixText: const TextFormIconsWidget(
                    iconData: CupertinoIcons.person,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.02),
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
                  height: height(context, 0.02),
                ),
                CustomTextFormField(
                  hint: Constants.email,
                  titleText: Constants.email,
                  extraTitleText: Constants.optinal,
                  prefixText: const TextFormIconsWidget(
                    iconData: CupertinoIcons.envelope,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.02),
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
                SizedBox(
                  height: height(context, 0.02),
                ),
                CustomTextFormField(
                  hint: Constants.confirmPassword,
                  titleText: Constants.confirmPassword,
                  suffixIcon: Icons.remove_red_eye,
                  enableSuffixIcon: true,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.lock_outlined,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.04),
                ),
                CustomButton(
                  title: Constants.login,
                  widthRatio: 0.85,
                ),
                const MediumPadding(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Constants.haveAccount,
                      textAlign: TextAlign.center,
                      style: getMediumStyle(fontSize: 14),
                    ),
                       InkWell(
                      child: Text(
                        " ${Constants.logIn}",
                        textAlign: TextAlign.center,
                        style: getMediumStyle(
                                fontSize: 18,
                                color: AppColors.mediumOrangeColor)
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context, 0.04),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
