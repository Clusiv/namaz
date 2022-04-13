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
      namazs?['2'],
      namazs?['3'],
      namazs?['4'],
      namazs?['5'],
      namazs?['6'],
    ];
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Namaz Time'),
        //   elevation: 0,
        // ),
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bgd.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          NamazRow('Fajr', times[0], namaztime2: times[1]),
          NamazRow('Zuhr', times[2]),
          NamazRow('Asr', times[3]),
          NamazRow('Maghrib', times[4]),
          NamazRow('Isha', times[5]),
          // MaterialButton(onPressed: read, child: const Text('Get'))
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    ));
  }
}
