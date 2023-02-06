import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:study_app_flutter/configs/themes/sub_theme_data_mixin.dart';
import 'package:get/get.dart';
import 'dart:ffi';

const Color primaryDarkColorDark = Color.fromARGB(255, 33, 47, 84);
const Color primaryColorDark = Color(0xFF99ace1);
const Color mainTextColorDark = Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes(),
    );
  }
}
