import 'package:flutter/material.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? Function(String?)? validator;
  void Function(String)? onChanged;
  final bool obscureText;
  final String? titleText;
  final String? extraTitleText;
  final Widget? prefixText;
  final bool disableTitle;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final bool enableSuffixIcon;
  final bool enable;
  final TextEditingController? controller;
  CustomTextFormField(
      {Key? key,
      required this.hint,
      this.textInputType,
      this.maxLines = 1,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.titleText,
      this.disableTitle = false,
      this.suffixIcon,
      this.enableSuffixIcon = false,
      this.controller,
      this.enable = true,
      this.prefixText,
      this.extraTitleText, this.suffixIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        disableTitle
            ? const SizedBox()
            : Row(
                children: [
                  Text(
                    titleText!,
                    style:
                        getBoldStyle(fontSize: 12, color: AppColors.blackColor),
                  ),
                  extraTitleText == null
                      ? const SizedBox()
                      : Text(
                          " ${extraTitleText!}",
                          style: getRegularStyle(
                              fontSize: 8, color: AppColors.blackColor),
                        ),
                ],
              ),
        disableTitle ? const SizedBox() : const SmallPadding(),
        Center(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              style: getRegularStyle(
                  color: AppColors.lightBlackColor, fontSize: 14),
              validator: validator,
              obscureText: obscureText,
              cursorColor: AppColors.blueColor,
              keyboardType: textInputType,
              maxLines: maxLines,
              decoration: InputDecoration(
                prefixIcon: prefixText,
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
                // prefixText: prefixText,
                enabled: enable,
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                // suffixIconConstraints: const BoxConstraints(),
                suffixIcon:
                    enableSuffixIcon ? Icon(suffixIcon , color: suffixIconColor??AppColors.mediumGrayColor
                    ,) : const SizedBox(),
                hintMaxLines: 2,
                hintText: hint,
                hintStyle: getRegularStyle(
                    color: AppColors.lightBlackColor, fontSize: 12),
                // contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PinCodeTextForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onCompleted;
  const PinCodeTextForm(
      {super.key, this.validator, this.controller, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context, 0.06)),
      child: PinCodeTextField(
        appContext: context,
        validator: validator,
        controller: controller,
        length: 4,
        onChanged: (val) {},
        enableActiveFill: true,
        onCompleted: onCompleted,
        keyboardType: TextInputType.number,
        backgroundColor: Colors.transparent,
        pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(10),
          shape: PinCodeFieldShape.box,
          fieldWidth: 58,
          fieldHeight: 58,
          borderWidth: 0,
          inactiveColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          activeColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          activeFillColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          disabledColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          inactiveFillColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          selectedColor: AppColors.mediumOrangeColor.withOpacity(0.5),
          selectedFillColor: AppColors.mediumOrangeColor.withOpacity(0.5),
        ),
      ),
    );
  }
}

class CustomProfileTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText;
  final String? titleText;
  final String? prefixText;
  final bool disableTitle;
  final IconData? suffixIcon;
  final bool enableSuffixIcon;
  final bool enable;
  final TextEditingController? controller;
  const CustomProfileTextFormField(
      {Key? key,
      required this.hint,
      this.textInputType,
      this.maxLines = 1,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.titleText,
      this.disableTitle = false,
      this.suffixIcon,
      this.enableSuffixIcon = false,
      this.controller,
      this.enable = true,
      this.prefixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: height(context, 0.07),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.lightGrayColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              validator: validator,
              obscureText: obscureText,
              cursorColor: AppColors.blueColor,
              keyboardType: textInputType,
              maxLines: maxLines,
              style: getRegularStyle(color: AppColors.blueColor, fontSize: 13),
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: prefixText == null
                    ? null
                    : Text(prefixText!,
                        style: getRegularStyle(
                            color: AppColors.blackColor, fontSize: 16)),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
                // prefixText: prefixText,
                enabled: enable,
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon:
                    enableSuffixIcon ? Icon(suffixIcon) : const SizedBox(),
                hintMaxLines: 2,
                hintText: hint,

                hintStyle:
                    getRegularStyle(color: AppColors.blackColor, fontSize: 10),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
