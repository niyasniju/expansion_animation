import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expansion Tile Example'),
        ),
        body: MyExpansionTile(),
      ),
    );
  }
}
