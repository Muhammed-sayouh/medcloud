import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darckWhiteColor,
      body: SingleChildScrollView(
        child: CustomScreen(
          hideClose: true,
          title: Constants.helpCenter,
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height(context, 0.02),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width(context, 0.02)),
                  child: Text(
                    Constants.fullName,
                    style: getRegularStyle(fontSize: 13),
                  ),
                ),
                const SmallPadding(),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.whiteColor,
                    hintText: Constants.fullName,
                    hintStyle: getRegularStyle(color: AppColors.lightGrayColor),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                  ),
                ),
                const MediumPadding(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width(context, 0.02)),
                  child: Text(
                    Constants.email,
                    style: getRegularStyle(fontSize: 13),
                  ),
                ),
                const SmallPadding(),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.whiteColor,
                    hintText: Constants.email,
                    hintStyle: getRegularStyle(color: AppColors.lightGrayColor),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                  ),
                ),
                const MediumPadding(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width(context, 0.02)),
                  child: Text(
                    Constants.message,
                    style: getRegularStyle(fontSize: 13),
                  ),
                ),
                const SmallPadding(),
                TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    fillColor: AppColors.whiteColor,
                    hintText: Constants.message,
                    hintStyle: getRegularStyle(color: AppColors.lightGrayColor),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                  ),
                ),
                SizedBox(
                  height: height(context, 0.06),
                ),
                Center(child: CustomButton(title: Constants.save,widthRatio: 0.8,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
