import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:math';

void main() async {
  var input = File("numTask2.txt");
  input.openRead();

  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  String p = "";
  String a = "";
  List<double> nums = [];

  await for (var line in l) {
    p += line;
  }

  for (int i = 0; i < p.length; i++) {
    if (p[i] != ";") {
      a += p[i];
    }
    if (p[i] == ";" || i + 1 == p.length) {
      nums.add(double.parse(a));
      a = "";
    }
  }

  for (int j = 0; j < nums.length; j++) {
    //сортировка
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        double a = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = a;
      }
    }
  }
  p = "";
  for (int i = 0; i < nums.length; i++) {
    p += nums[i].toString();
    p += ";";
  }
  var sink = input.openWrite(); //запись в файл
  sink.write(p);
  sink.close();
}
