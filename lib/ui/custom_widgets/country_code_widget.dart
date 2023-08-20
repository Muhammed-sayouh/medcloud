import 'package:flutter/material.dart';
import 'package:medcloud/ui/custom_widgets/country_code_package.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';
import 'package:medcloud/ui/theme/style/colors.dart';

class CountryCodeWidget extends StatelessWidget {
  const CountryCodeWidget({super.key});




  @override
  Widget build(BuildContext context) {
    return CountryCodePickerCustom(
                  onChanged: (element) {
                    debugPrint(element.dialCode);
                  } ,
      // onInit: (value) {
      //   print(value);
      // },
      initialSelection: 'SA',
      showCountryOnly: false,
      showOnlyCountryWhenClosed: false,
      alignLeft: false,
      padding: EdgeInsets.zero,
      flagWidth: 25,
      textStyle: getRegularStyle(color: AppColors.lightBlackColor,fontSize: 14),
      
    );
  }
}
