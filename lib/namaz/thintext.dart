import 'package:flutter/material.dart';

class ThinText extends StatelessWidget {
  final String? datatext;
  const ThinText(this.datatext) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      datatext ?? '',
      textAlign: TextAlign.right,
      style: const TextStyle(
        fontFamily: 'Cooper-Hewitt',
        color: Colors.blue,
        fontSize: 80,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
