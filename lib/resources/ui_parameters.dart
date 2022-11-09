import 'package:flutter/material.dart';
import 'color_manager.dart';

class UiParameters {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

customScaffoldColor(BuildContext context) => UiParameters.isDarkMode(context)
    ? ColorManager.primaryDark
    : ColorManager.primaryLight;
