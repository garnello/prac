import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:math';

List<String> transforming(String be) {
  List<String> l = [];
  String l1 = "";
  bool o = true;

  for (int i = 0; i < be.length; i++) {
    while (be[i] != " " && o) {
      l1 += be[i];
      if (i < be.length - 1) {
        i++;
      } else {
        o = false;
      }
    }
    l.add(l1);
    l1 = "";
  }
  return l;
}

void main() async {
  var input = File("numTask1.txt");
  input.openRead();

  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> p = [];

  await for (var line in l) {
    p.add(line);
  }
  List<String> word = transforming(p[0]);
  print(word);

  for (int i = 0; i < word.length; i++) {
    if (word[i].length % 2 != 0) {
      print(word[i]);
    }
  }
}
