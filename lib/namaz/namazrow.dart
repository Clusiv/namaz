import 'package:flutter/material.dart';
import 'package:namaz/namaz/thictext.dart';
import 'package:namaz/namaz/thintext.dart';

class NamazRow extends StatelessWidget {
  final String? namaztime;
  final String namazname;
  const NamazRow(this.namazname, this.namaztime) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ThicText(namazname),
        ThinText(namaztime),
      ],
    );
  }
}
