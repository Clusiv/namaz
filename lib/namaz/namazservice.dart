import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/assets/all_namazs.json');
}

// Future<File> writeCounter(String namazs) async {
//   final file = await _localFile;
//   // Write the file
//   return file.writeAsString(namazs);
// }

Future<String> readNamazs() async {
  try {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();
    // final contents = await rootBundle.loadString('assets/all_namazs.json');

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return '';
  }
}
