import 'package:flutter/material.dart';
import 'package:tokenlands/screens/main_screen.dart';
import 'package:tokenlands/screens/phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Phone();
  }
}
