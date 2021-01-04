import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[700],
        primaryColorLight: Colors.green[400],
        primaryColorDark: Colors.green[900],
      ),
      home: SplashPage(),
    );
  }
}
