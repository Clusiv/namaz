import 'package:flutter/material.dart';
import 'package:namaz/matcolorwhite.dart';
import 'package:namaz/profile/mainscreen.dart';
import 'namaz/namaz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pv = PageView(
      controller: PageController(initialPage: 0),
      children: [
        const NamazScreen(),
        // Profile(),
      ],
    );

    return MaterialApp(
      home: pv,
      theme: ThemeData(primarySwatch: white),
    );
  }
}
