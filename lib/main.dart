import 'package:flutter/material.dart';
import 'package:flutter_parallax_walkthrough/walk_through/walkthrough_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walk through parallax Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WalkThroughPage(),
    );
  }
}
