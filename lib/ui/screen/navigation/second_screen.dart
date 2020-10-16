import 'package:flutter/material.dart';
import 'package:flutter_example/controller/global_controller.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            GlobalController controller = Get.find();
            controller.decrement();
          },
          child: Text('Count--'),
        ),
      ),
    );
  }
}
