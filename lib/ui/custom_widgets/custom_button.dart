import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color textColor;
  final bool isBoldedText;
  final String title;
  final double widthRatio;
  final double hightRatio;
  final double elevation;
  final double borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  const CustomButton(
      {Key? key,
      this.backgroundColor,
      required this.title,
      this.widthRatio = 0.9,
      this.hightRatio = 0.065,
      this.textColor = Colors.white,
      this.isBoldedText = true,
      this.elevation = 0,
      this.onPressed,
      this.borderRadius = 15,  this.fontSize, this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
        enableFeedback: true,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color:borderColor??AppColors.blueColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),

        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor??AppColors.blueColor),
        shadowColor: MaterialStateProperty.all(AppColors.blueColor),
        fixedSize: MaterialStateProperty.all(
          Size(
            width(context, widthRatio),
            height(context, hightRatio),
          ),
        ),
      ),
      child: Text(
        title,
        style: sBigBlackFont().copyWith(
            color: textColor,
            fontWeight: isBoldedText ? FontWeight.bold : FontWeight.normal , fontSize: fontSize??12),
      ),
    );
  }
}

class CustomButtonWithWidget extends StatelessWidget {
  final Color? backgroundColor;
  final Color textColor;
  final bool isBoldedText;
  final Widget title;
  final double widthRatio;
  final double hightRatio;
  final double elevation;
  final void Function()? onPressed;
  const CustomButtonWithWidget(
      {Key? key,
      this.backgroundColor ,
      required this.title,
      this.widthRatio = 1,
      this.hightRatio = 0.09,
      this.textColor = Colors.white,
      this.isBoldedText = true,
      this.elevation = 0,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
        enableFeedback: true,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor??AppColors.blueColor),
        shadowColor: MaterialStateProperty.all(AppColors.blueColor),
        fixedSize: MaterialStateProperty.all(
          Size(
            width(context, widthRatio),
            height(context, hightRatio),
          ),
        ),
      ),
      child: title,
    );
  }
}
