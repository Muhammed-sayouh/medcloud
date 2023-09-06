import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          hideClose: true,
          title: Constants.changePassword,
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 0.02),
                ),
                CustomTextFormField(
                  hint: Constants.currentPassword,
                  titleText: Constants.currentPassword,
                  suffixIcon: Icons.remove_red_eye,
                  enableSuffixIcon: true,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.lock_outlined,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                CustomTextFormField(
                  hint: Constants.newPassword,
                  titleText: Constants.newPassword,
                  suffixIcon: Icons.remove_red_eye,
                  enableSuffixIcon: true,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.lock_outlined,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                CustomTextFormField(
                  hint: Constants.confirmNewPassword,
                  titleText: Constants.confirmNewPassword,
                  suffixIcon: Icons.remove_red_eye,
                  enableSuffixIcon: true,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.lock_outlined,
                  ),
                ),
                SizedBox(
                  height: height(context, 0.1),
                ),
                CustomButton(
                  title: Constants.save,
                  widthRatio: 0.8,
                )
              ],
            ),
          )),
    );
  }
}
