import 'package:flutter/material.dart';

class ThicText extends StatelessWidget {
  final String namazname;
  const ThicText(this.namazname) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      namazname,
      textAlign: TextAlign.end,
      style: const TextStyle(
        // fontFamily: 'Cooper-Hewitt',
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
