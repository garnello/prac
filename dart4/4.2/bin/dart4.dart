import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
  var input = File("input.txt");
  input.openRead();

  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  String nums = "";
  List<double> a = [];
  String b = "";
  double out = 0;

  await for (var line in l) {
    nums += line;
  }

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != ";") {
      b += nums[i];
    }
    if (nums[i] == ";" || i + 1 == nums.length) {
      a.add(double.parse(b));
      b = "";
    }
  }
  for (int i = 0; i < a.length; i++) {
    if (a[i] > 0) {
      out += a[i];
    }
    if (a[i] == 0) {
      i = a.length;
    }
  }
  print(out);
}
