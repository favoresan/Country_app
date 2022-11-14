import 'package:flutter/material.dart';
import 'assets_manager.dart';
import 'color_manager.dart';

class UiParameters {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

customScaffoldColor(BuildContext context) => UiParameters.isDarkMode(context)
    ? ColorManager.primaryDark
    : ColorManager.primaryLight;

customExploreColor(BuildContext context) => UiParameters.isDarkMode(context)
    ? ColorManager.primaryLight
    : ColorManager.primaryDark;

customSearchContainerColor(BuildContext context) =>
    UiParameters.isDarkMode(context)
        ? ColorManager.secondaryDark
        : ColorManager.secondaryLight;

customSearchColor(BuildContext context) => UiParameters.isDarkMode(context)
    ? ColorManager.primaryLight
    : ColorManager.grey;

customCheckBoxColor(BuildContext context) => UiParameters.isDarkMode(context)
    ? ColorManager.primaryLight
    : ColorManager.black;

customLoading(BuildContext context) => UiParameters.isDarkMode(context)
    ? JsonAssets.loadingDark
    : JsonAssets.loadingLight;
