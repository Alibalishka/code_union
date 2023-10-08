import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppTheme {
  static const String kFontFamily = 'Manrope';

  static const lightTheme = CupertinoThemeData(
    scaffoldBackgroundColor: AppColors.lightGrayColor,
    barBackgroundColor: AppColors.whiteColor,
    textTheme: CupertinoTextThemeData(
      primaryColor: CupertinoColors.black,
      textStyle: TextStyle(
        color: CupertinoColors.black,
        fontFamily: kFontFamily,
      ),
      navTitleTextStyle: TextStyle(
        color: CupertinoColors.black,
        fontWeight: FontWeight.w500,
        fontFamily: kFontFamily,
      ),
    ),
  );
}
