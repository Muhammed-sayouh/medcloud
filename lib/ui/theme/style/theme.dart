import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData getTheme() {
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: 'Alexandria',
    inputDecorationTheme:  InputDecorationTheme(
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      hintStyle: const TextStyle(color: AppColors.mediumGrayColor),
      fillColor: Colors.transparent,
      filled: true,
      isDense: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.lightGrayColor,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.lightGrayColor,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      errorBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
    ),
  );
}
