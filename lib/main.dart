import 'package:flutter/material.dart';
import 'package:spotify_clone/widget/calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Calculator(),
    );
  }
}
