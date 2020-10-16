import 'package:flutter/material.dart';
import 'package:flutter_example/ui.screen/first_screen.dart';
import 'package:flutter_example/ui.screen/home_page.dart';
import 'package:flutter_example/ui.screen/second_screen.dart';
import 'package:flutter_example/ui.screen/third_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      enableLog: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/page1", page: () => FirstScreen()),
        GetPage(name: "/page2", page: () => SecondScreen()),
        GetPage(name: "/page3", page: () => ThirdScreen()),
      ],
    );
  }
}
