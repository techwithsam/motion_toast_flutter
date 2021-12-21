import 'package:flutter/material.dart';
import 'package:motion_toast_flutter/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Toast Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Motion Toast Flutter'),
    );
  }
}
