import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/intro/intro_screen.dart';

class CustomScreen extends StatelessWidget {
  final Widget child;
  final bool hideBack;
  final bool hideClose;
  const CustomScreen(
      {super.key,
      required this.child,
      this.hideBack = false,
      this.hideClose = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: width(context, 1),
              height: height(context, 0.18),
              child: Image.asset(
                Constants.headerImage,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: commonPaddingHorizental(context,
                  virtical: height(context, 0.07)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  hideBack
                      ? const SizedBox()
                      : InkWell(
                          onTap: () => Navigators.back(context),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.whiteColor,
                          )),
                  hideClose
                      ? const SizedBox()
                      : InkWell(
                          onTap: () => Navigators.getOffAll(
                              context, const IntroScreen()),
                          child: Text(
                           Constants.close,
                            style: getRegularStyle(
                                color: AppColors.whiteColor, fontSize: 18),
                          ))
                ],
              ),
            ),
          ],
        ),
        child
      ],
    );
  }
}
