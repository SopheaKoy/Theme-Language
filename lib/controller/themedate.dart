import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServer {
  //! Darkmode
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(),
    dividerColor: Colors.black12,
  );
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(),
    dividerColor: Colors.white54,
  );

  //? Stroage Theme

  final _getStroage = GetStorage();
  final _darkThemeKey = "isDarkTheme";

  //! method saveTheme  and has argment bool

  void SaveTheme(bool isDarkMode) {
    _getStroage.write(_darkThemeKey, isDarkMode);
  }

  //*
  bool isSaveDarkTheme() {
    return _getStroage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSaveDarkTheme() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeThemeMode() {
    Get.changeThemeMode(isSaveDarkTheme() ? ThemeMode.light : ThemeMode.dark);
    SaveTheme(!isSaveDarkTheme());
  }
}
