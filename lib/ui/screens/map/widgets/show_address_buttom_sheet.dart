import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/country_code_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_text_form.dart';
import 'package:medcloud/ui/custom_widgets/text_form_icon_widget.dart';
import 'package:medcloud/ui/screens/checkout/checkout_screen.dart';

void showAddressButtomSheet(BuildContext context, String address) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        height: height(context, 0.63),
        width: width(context, 1),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BigPadding(),
              Center(
                child: Container(
                  height: 4,
                  width: width(context, 0.5),
                  decoration: BoxDecoration(
                    color: AppColors.darkGrayColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: height(context, 0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on),
                  const MediumPadding(
                    horizental: true,
                  ),
                  
                  SizedBox(
                    width: width(context, 0.75),
                    child: Text(
                      address,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: getRegularStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height(context, 0.03),),
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

                  SizedBox(height: height(context, 0.04),),
              Padding(
                padding: commonPaddingHorizental(context),
                child: InkWell(
                  onTap: () => Navigators.getTo(context, const CheckoutScreen()),
                  child: Container(
                    height: height(context, 0.055),
                    width: width(context, 0.8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleColor,
                    ),
                    child: Center(
                      child: Text(
                        Constants.save,
                        style: getMediumStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
