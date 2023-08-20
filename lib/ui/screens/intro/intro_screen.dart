import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';
import 'package:medcloud/ui/theme/style/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          child: Padding(
        padding: commonPaddingHorizental(context),
        child: Column(
          children: [
            SizedBox(
              height: height(context, 0.04),
            ),
            CustomButton(title: Constants.loginSignUp),
            SizedBox(
              height: height(context, 0.04),
            ),
            const Divider(),
            const MediumPadding(),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  children: [
                    RowItemIntroScreen(
                      title: Constants.language,
                      endText: Constants.getLanguage() == 'ar'
                          ? "العربية"
                          : "English",
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.aboutUs,
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.termsAndConditions,
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.qA,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class RowItemIntroScreen extends StatelessWidget {
  final String title;
  final String? endText;
  const RowItemIntroScreen({
    super.key,
    required this.title,
    this.endText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getRegularStyle(
            fontSize: 14,
          ),
        ),
        endText != null
            ? Text(endText!, style: getRegularStyle())
            : const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.lightBlackColor,
                size: 16,
              )
      ],
    );
  }
}
