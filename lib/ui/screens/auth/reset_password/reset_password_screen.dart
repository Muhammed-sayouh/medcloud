import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomScreen(
          hideBack: true,
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 0.07),
                ),
                Text(
                  Constants.resetPassword,
                  style: getMediumStyle(fontSize: 23),
                ),
                SizedBox(
                  height: height(context, 0.06),
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
                  height: height(context, 0.03),
                ),
                CustomTextFormField(
                  hint: Constants.password,
                  titleText: Constants.confirmPassword,
                  suffixIcon: Icons.remove_red_eye,
                  enableSuffixIcon: true,
                  prefixText: const TextFormIconsWidget(
                    iconData: Icons.lock_outlined,
                  ),
                ),
                const SmallPadding(),
              
                SizedBox(
                  height: height(context, 0.04
                  ),
                ),
                CustomButton(title: Constants.reset,widthRatio: 0.85,),
            
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}