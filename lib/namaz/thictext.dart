import 'package:flutter/material.dart';

class ThicText extends StatelessWidget {
  final String namazname;
  const ThicText(this.namazname) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      namazname,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontFamily: 'Cooper-Hewitt',
        color: Colors.blue,
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
