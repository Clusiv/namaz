import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final String t;

  const TimeWidget({Key? key, required this.t}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      t,
      textAlign: TextAlign.right,
      style: const TextStyle(
          color: Colors.blue, fontSize: 72, fontWeight: FontWeight.w100),
    );
  }
}
