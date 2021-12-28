import 'package:flutter/material.dart';
import '../fileservice.dart';
import 'time_widget.dart';

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
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TimeWidget(t: times[0]),
              TimeWidget(t: times[1]),
              TimeWidget(t: times[2]),
              TimeWidget(t: times[3]),
              TimeWidget(t: times[4]),
              MaterialButton(onPressed: read, child: const Text('Get'))
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
