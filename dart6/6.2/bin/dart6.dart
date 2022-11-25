import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:math';

void main() async {
  var input = File("numTask2.txt");
  input.openRead();

  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  String gg = "";
  List<String> p = [];

  try {
    await for (var line in l) {
      gg += line;
      gg += " ";
    }
  } catch (e) {
    print("Error: $e");
  }

  print(gg);
}
