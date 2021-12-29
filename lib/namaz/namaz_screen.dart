import 'package:flutter/material.dart';
import '../fileservice.dart';
import '../thintext.dart';

class NamazScreen extends StatefulWidget {
  const NamazScreen({Key? key}) : super(key: key);

  @override
  NamazState createState() {
    return NamazState();
  }
}

class NamazState extends State<NamazScreen> {
  write() {
    var s = "6:00,12:30,14:20,16:30,18:10";
    writeCounter(s).then((value) => debugPrint('OOOOKKKK'));
  }

  List<String> times = ['', '', '', '', ''];
  void read() {
    readCounter().then((value) {
      if (value == '') {
        debugPrint('Not found');
      } else {
        setState(() {
          times = value.split(',');
        });
        debugPrint(times.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    write();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Namaz Time'),
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              ThinText(times[0]),
              ThinText(times[1]),
              ThinText(times[2]),
              ThinText(times[3]),
              ThinText(times[4]),
              MaterialButton(onPressed: read, child: const Text('Get'))
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
