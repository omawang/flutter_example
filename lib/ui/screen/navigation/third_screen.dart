import 'package:flutter/material.dart';
import 'package:flutter_example/controller/global_controller.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            GlobalController controller = Get.find();
            controller.reset();
          },
          child: Text('Count [Reset]'),
        ),
      ),
    );
  }
}
