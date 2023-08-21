import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';

class RegisterTypeScreen extends StatefulWidget {
  const RegisterTypeScreen({super.key});

  @override
  State<RegisterTypeScreen> createState() => _RegisterTypeScreenState();
}

class _RegisterTypeScreenState extends State<RegisterTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          child: Padding(
        padding: commonPaddingHorizental(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height(context, 0.07),
            ),
            Text(
              Constants.typeOfUse,
              style: getMediumStyle(fontSize: 23),
            ),
            SizedBox(
              height: height(context, 0.12),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: AppColors.lightOrangeColor,
                  borderRadius: BorderRadius.circular(10)),
              child: CustomButton(
fontSize: 23,

                title: Constants.individuals,
                backgroundColor: AppColors.mediumOrangeColor,
                borderColor: AppColors.lightOrangeColor,
                hightRatio: 0.08,
                textColor: AppColors.blackColor,
                isBoldedText: false,
              ),
            ),
             SizedBox(
              height: height(context, 0.04),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: AppColors.lightOrangeColor,
                  borderRadius: BorderRadius.circular(10)),
              child: CustomButton(
                isBoldedText: false,

                hightRatio: 0.08,
textColor: AppColors.blackColor,
fontSize: 23,
                title: Constants.business,
                backgroundColor: AppColors.mediumOrangeColor,
                borderColor: AppColors.lightOrangeColor,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
