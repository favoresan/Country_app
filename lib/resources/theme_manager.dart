import 'package:country_app/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'color_manager.dart';

ThemeData getApplicationDarkTheme() {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: ColorManager.primaryDark,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: ColorManager.secondaryDark),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayLarge: getBoldStyle(color: ColorManager.primaryLight),
      displaySmall: getRegularStyle(
        color: ColorManager.primaryLight,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.primaryLight,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.primaryLight,
      ),
      bodyLarge: getBoldStyle(color: ColorManager.primaryLight),
      bodySmall: getMediumStyle(color: ColorManager.primaryLight),
    ),
  );
}

ThemeData getApplicationLightTheme() {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: ColorManager.primaryLight,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: ColorManager.secondaryLight),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayLarge: getBoldStyle(color: ColorManager.black),
      displaySmall: getRegularStyle(
        color: ColorManager.black,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.black,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.black,
      ),
      bodyLarge: getBoldStyle(color: ColorManager.black),
      bodySmall: getMediumStyle(color: ColorManager.black),
    ),
  );
}
