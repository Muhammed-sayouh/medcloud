import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darckWhiteColor,
      body: CustomScreen(
        hideClose: true,
        title: Constants.wallet,
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(width(context, 0.05)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              Constants.balanceTotal,
                              style: getRegularStyle(
                                color: AppColors.orangeColor,
                              ),
                            ),
                            const SmallPadding(),
                            Text(
                              "220 ${Constants.sar}",
                              style: getRegularStyle(
                                  color: AppColors.blackColor, fontSize: 20),
                            ),
                          ],
                        ),
                        CustomButton(
                          title: Constants.checkout,
                          hightRatio: 0.05,
                          widthRatio: 0.35,
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: height(context, 0.04),
              ),
              Text(
                Constants.history,
                style:
                    getMediumStyle(color: AppColors.blackColor, fontSize: 20),
              ),
              const MediumPadding(),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(width(context, 0.05)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Constants.refund,
                              style: getRegularStyle(fontSize: 14),
                            ),
                            const SmallPadding(),
                            Text(
                              "1294365Ca",
                              style: getRegularStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Column(

                          children: [
                            Text(
                              "06/07/2021",
                              style: getRegularStyle(
                                  fontSize: 14,
                                  color: AppColors.lightGrayColor),
                            ),
                            const SmallPadding(),
                            Text(
                              "+ 220 ${Constants.sar}",
                              style: getRegularStyle(
                                  color: AppColors.orangeColor, fontSize: 16),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
