import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:theme_language/controller/fonts_controller.dart';
import 'package:theme_language/controller/local_string.dart';
import 'package:theme_language/controller/themedate.dart';
import 'package:theme_language/screen/homepage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return SimpleBuilder(builder: (context) {
      return GetMaterialApp(
        translations: LocalString(),
        locale: Locale('EN'),
        theme: ThemeServer().darkTheme,
        darkTheme: ThemeServer().lightTheme,
        themeMode: ThemeServer().getThemeMode(),
        initialRoute: fontController.intFont().toString(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    });
  }
}
