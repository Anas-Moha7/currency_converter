import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var currency_convert = Currency_Convert();
    return MaterialApp(
      title: 'Currency Convert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: currency_convert,
    );
  }
}

Currency_Convert() {}
