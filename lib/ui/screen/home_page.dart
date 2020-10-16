import 'package:flutter/material.dart';
import 'package:flutter_example/controller/global_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Example"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GetX<GlobalController>(
                  builder: (_) => Text(
                        'clicks: ${controller.count}',
                      )),
              RaisedButton(
                child: Text("Navigation Example"),
                onPressed: () {
                  Get.toNamed('navigation');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
