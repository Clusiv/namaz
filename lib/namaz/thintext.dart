import 'package:flutter/material.dart';

class ThinText extends StatelessWidget {
  final String? namaztime;
  final String? namaztime2;
  const ThinText(this.namaztime, this.namaztime2) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          namaztime ?? '',
          textAlign: TextAlign.right,
          style: const TextStyle(
            // fontFamily: 'Cooper-Hewitt',
            color: Colors.black,
            fontSize: 72,
            fontWeight: FontWeight.w100,
          ),
        ),
        namaztime2 != ''
            ? Text(
                namaztime2 ?? '',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              )
            : Center()
      ],
    );
  }
}
