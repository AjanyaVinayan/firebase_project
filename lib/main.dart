import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Signup(),
      // home: Login(),
      home: Welcome(),
    );
  }
}
