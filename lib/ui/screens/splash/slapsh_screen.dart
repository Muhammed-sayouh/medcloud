import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/intro/intro_screen.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';
import 'package:medcloud/view_model/change_language_view_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        hideBack: true,
        hideClose: true,
        child: Column(
          children: [
            SizedBox(
              height: height(context, 0.15),
            ),
            const CustomAssetImage(imagePath: Constants.logoImage),
            SizedBox(
              height: height(context, 0.023),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consetetur",
              style: getRegularStyle(color: AppColors.blackColor),
            ),
            SizedBox(
              height: height(context, 0.15),
            ),
            SizedBox(
              width: width(context, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    title: "English",
                    widthRatio: 0.4,
                    onPressed: () {
                      ChangeLanguageViewModel changeLanguageViewModel =
                          ChangeLanguageViewModel();
                      changeLanguageViewModel.changeToEnglish().then(
                            (value) => Navigators.getTo(
                              context,
                              const IntroScreen(),
                            ),
                          );
                    },
                  ),
                  SizedBox(
                    width: width(context, 0.04),
                  ),
                  CustomButton(
                    title: "عربي",
                    widthRatio: 0.4,
                    backgroundColor: AppColors.whiteColor,
                    textColor: AppColors.blueColor,
                    borderColor: AppColors.blueColor,
                    onPressed: () {
                      ChangeLanguageViewModel changeLanguageViewModel =
                          ChangeLanguageViewModel();
                      changeLanguageViewModel.changeToArabic().then(
                            (value) => Navigators.getTo(
                              context,
                              const IntroScreen(),
                            ),
                          );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
