import 'package:flutter/material.dart';
import 'styles/palette.dart';
import 'home.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
        fontFamily: 'Circular Std',
        primarySwatch: Colors.blue
      ),
      home: null,
      routes: {
        '/': (context) => HomeWidget(),
      }
    );
  }
}