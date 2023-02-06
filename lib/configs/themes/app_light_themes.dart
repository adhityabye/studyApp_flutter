import 'dart:ffi';

import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:study_app_flutter/configs/themes/sub_theme_data_mixin.dart';
import 'package:get/get.dart';

const Color primaryLightColorLight = Color(0xFF3ac3cb);
const Color primaryColorLight = Color(0xFFFf85187);
const Color mainTextColor = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes(),
    );
  }
}
