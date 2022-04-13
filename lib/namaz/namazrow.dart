import 'package:flutter/material.dart';
import 'package:namaz/namaz/thictext.dart';
import 'package:namaz/namaz/thintext.dart';

class NamazRow extends StatelessWidget {
  final String? namaztime;
  final String? namaztime2;

  final String namazname;
  const NamazRow(this.namazname, this.namaztime, {this.namaztime2 = ''})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.7),
            spreadRadius: 5,
            // blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ThicText(namazname),
          ThinText(namaztime, namaztime2),
        ],
      ),
    );
  }
}
