import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({Key key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text("Page 1"),
              onPressed: () {
                Get.toNamed('page1');
              },
            ),
            RaisedButton(
              child: Text("Page 2"),
              onPressed: () {
                Get.toNamed('page2');
              },
            ),
            RaisedButton(
              child: Text("Page 3"),
              onPressed: () {
                Get.toNamed('page3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
