import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:namaz/namaz/namazrow.dart';
import 'package:namaz/namaz/namazservice.dart';
import 'package:namaz/namaz/util.dart';
import '../fileservice.dart';
import 'package:namaz/namaz/data.dart';

class NamazScreen extends StatefulWidget {
  const NamazScreen({Key? key}) : super(key: key);

  @override
  NamazState createState() {
    return NamazState();
  }
}

class NamazState extends State<NamazScreen> {
  // write() {
  //   var s = "6:00,12:30,14:20,16:30,18:10";
  //   writeCounter(s).then((value) => debugPrint('OOOOKKKK'));
  // }

  List<String?> times = ['', '', '', '', ''];
  void read() {
    // DateTime date = DateTime.now();
    // String? curMonth = getMonth(date.month);
    // int curday = date.day;
    // // debugPrint(curday.toString());
    // var namazs = namazdata[curMonth]?[curday.toString()];
    // times = [
    //   namazs?['1'],
    //   namazs?['3'],
    //   namazs?['4'],
    //   namazs?['5'],
    //   namazs?['6'],
    // ];
    // debugPrint(namazdata[curMonth]?[curday.toString()].toString());

    setState(() {});
    // readNamazs().then((value) {
    //   if (value == '') {
    //     debugPrint('Not found');
    //   } else {
    //     var js = json.decode(value);
    //     debugPrint(js);
    //     setState(() {
    //       // times = value.split(',');
    //     });
    //     debugPrint(times.toString());
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String? curMonth = getMonth(date.month);
    int curday = date.day;
    // debugPrint(curday.toString());
    var namazs = namazdata[curMonth]?[curday.toString()];
    times = [
      namazs?['1'],
      namazs?['3'],
      namazs?['4'],
      namazs?['5'],
      namazs?['6'],
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Namaz Time'),
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // ThinText(times[0]),
              // ThinText(times[1]),
              // ThinText(times[2]),
              // ThinText(times[3]),S
              // ThinText(times[4]),
              NamazRow('Fajr', times[0]),
              NamazRow('Zuhr', times[1]),
              NamazRow('Asr', times[2]),
              NamazRow('Maghrib', times[3]),
              NamazRow('Isha', times[4]),
              // MaterialButton(onPressed: read, child: const Text('Get'))
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
