import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:study_app_flutter/configs/themes/app_dark_themes.dart';
import 'package:study_app_flutter/configs/themes/app_light_themes.dart';
import 'package:flutter/material.dart';
import 'package:study_app_flutter/configs/themes/ui_parameters.dart';

const mainGradientLight = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryLightColorLight,
    primaryColorLight,
  ],
);

const mainGradientDark = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryDarkColorDark,
    primaryColorDark,
  ],
);

LinearGradient mainGradient(BuildContext context) =>
    UIParameters.isDarkMode(context) ? mainGradientDark : mainGradientLight;
