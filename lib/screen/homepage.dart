import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_language/controller/fonts_controller.dart';
import 'package:theme_language/controller/themedate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool _iconsData = true;
IconData _darkTheme = Icons.dark_mode;
IconData _lightTheme = Icons.wb_sunny;

class _HomePageState extends State<HomePage> {
  FontController fontController = Get.put(FontController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter".tr),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  ThemeServer().changeThemeMode();
                  _iconsData = !_iconsData;
                });
              },
              icon: Icon(_iconsData ? _darkTheme : _lightTheme)),
        ],
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Container(
              color: Colors.black,
            ),
            Container(
              height: 80,
              color: Colors.red,
            ),
            Container(color: Colors.blueGrey),
            Container(
              color: Colors.green,
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
          setState(() {
            Get.back();
              var locale = Locale('KH');
              Get.updateLocale(locale);
          });
            
          },
          child: Icon(Icons.change_circle)),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
