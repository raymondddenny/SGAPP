import 'package:flutter/material.dart';
import 'package:sg/pages/home.dart';
import 'package:sg/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'SG APP',
      home: SGHOME(),
    );
  }
}
