import 'package:flutter/material.dart';
import 'package:flutter_example/controller/global_controller.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            GlobalController controller = Get.find();
            controller.increment();
          },
          child: Text('Count++'),
        ),
      ),
    );
  }
}
