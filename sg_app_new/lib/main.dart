import 'package:flutter/material.dart';
import 'package:sg_app_new/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'SG APP',
      home: Welcome(),
    );
  }
}
