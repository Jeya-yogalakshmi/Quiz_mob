// @dart=2.9
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/splash_screen.dart';

// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugShowCheckModeBanner:false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizmob',
      theme: ThemeData(
        fontFamily: 'Acme',
        backgroundColor: Colors.deepOrangeAccent[100],
      ),
      home: splashscreen(),
    );
  }
}



