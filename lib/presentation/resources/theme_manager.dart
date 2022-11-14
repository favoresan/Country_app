import 'package:country_app/presentation/resources/font_manager.dart';
import 'package:country_app/presentation/resources/styles_manager.dart';
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
      displayLarge: getBoldStyle(
          color: ColorManager.primaryLight, fontSize: FontSize.s30),
      displaySmall: getRegularStyle(
        color: ColorManager.primaryLight,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.primaryLight,
        fontSize: FontSize.s15,
      ),
      titleMedium: getMediumStyle(
          color: ColorManager.primaryLight, fontSize: FontSize.s16),
      titleLarge: getBoldStyle(
        color: ColorManager.primaryLight,
        fontSize: FontSize.s15,
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
      displayLarge:
          getBoldStyle(color: ColorManager.black, fontSize: FontSize.s15),
      displaySmall: getRegularStyle(
        color: ColorManager.black,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSize.s15,
      ),
      titleMedium:
          getMediumStyle(color: ColorManager.black, fontSize: FontSize.s17),
      titleLarge: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s15,
      ),
      bodyLarge: getBoldStyle(color: ColorManager.black),
      bodySmall: getMediumStyle(color: ColorManager.black),
    ),
  );
}
