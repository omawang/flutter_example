import 'package:flutter/material.dart';
import 'package:flutter_example/ui/screen/toast/toast_screen.dart';
import 'package:get/get.dart';

import 'ui/screen/home_page.dart';
import 'ui/screen/navigation/navigation_screen.dart';
import 'ui/screen/navigation/first_screen.dart';
import 'ui/screen/navigation/second_screen.dart';
import 'ui/screen/navigation/third_screen.dart';

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
        GetPage(name: "/navigation", page: () => NavigationScreen()),
        GetPage(name: "/page1", page: () => FirstScreen()),
        GetPage(name: "/page2", page: () => SecondScreen()),
        GetPage(name: "/page3", page: () => ThirdScreen()),
        GetPage(name: "/toastScreen", page: () => ToastScreen()),
      ],
    );
  }
}
