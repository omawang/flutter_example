import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  @override
  _ToastScreenState createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  void _showToast() {
    Fluttertoast.showToast(msg: 'Hello World!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Example"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: _showToast,
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}
