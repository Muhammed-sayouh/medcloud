import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';
import 'package:medcloud/ui/theme/style/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            children: [
              SizedBox(
                height: height(context, 0.1),
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
                child: Text(
                  Constants.forgetPassword,
                  style: getMediumStyle(),
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

class TextFormIconsWidget extends StatelessWidget {
  final IconData iconData;
  final Widget? extraWidget;
  const TextFormIconsWidget({
    super.key,
    required this.iconData,
    this.extraWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: extraWidget == null ? 8 : 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width(context, 0.075),
            height: width(context, 0.075),
            decoration: BoxDecoration(
              color: AppColors.lightOrangeColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Icon(
              iconData,
              color: AppColors.orangeColor,
              size: 18,
            )),
          ),
          extraWidget == null
              ? const SizedBox()
              : const SmallPadding(
                  horizental: true,
                ),
          extraWidget ?? const SizedBox(),
        ],
      ),
    );
  }
}
