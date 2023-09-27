import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_carryva/screens/loginpage.dart';

var height;
var width;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'new_carryiva',

      home: LoginPage(),
    );
  }
}
