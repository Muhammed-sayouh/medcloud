import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';
import 'package:medcloud/ui/screens/change_password/change_password_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomScreen(
            hideClose: true,
            title: Constants.editProfile,
            child: Padding(
              padding: commonPaddingHorizental(context),
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          "https://einercial.com/wp-content/uploads/2018/04/Facebook-no-profile-picture-icon-620x389.jpg",
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(59, 0, 0, 0)),
                        child: const Center(
                            child: Icon(
                          CupertinoIcons.add_circled,
                          color: AppColors.whiteColor,
                          size: 50,
                        )),
                      )
                    ],
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
                    height: height(context, 0.05),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        onPressed: () => Navigators.getTo(context, const ChangePasswordScreen()),
                        widthRatio: 0.4,
                        hightRatio: 0.055,
                        title: Constants.changePassword,
                        backgroundColor: AppColors.whiteColor,
                        textColor: AppColors.purpleColor,
                        borderColor: AppColors.purpleColor,
                      ),
                      CustomButton(
                        title: Constants.save,
                        widthRatio: 0.4,
                        hightRatio: 0.055,
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
