import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:math';

void main() async {
  var input = File("numTask1.txt");
  input.openRead();

  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  String p = "";
  String a = "";
  List<int> nums = [];

  await for (var line in l) {
    p += line;
  }

  for (int i = 0; i < p.length; i++) {
    if (p[i] != " ") {
      a += p[i];
    }
    if (p[i] == " " || i + 1 == p.length) {
      nums.add(int.parse(a));
      a = "";
    }
  }

  int min = nums.first;
  int minIn = 0;
  int o = 1;
  bool r = true;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < min) {
      min = nums[i];
      minIn = i;
    }
  }

  for (int i = minIn + 1; i < nums.length; i++) {
    o *= nums[i];
    r = false;
  }
  if (r) {
    print("Минимальное число $min и после него нет чисел");
  } else {
    print(o);
  }
}
