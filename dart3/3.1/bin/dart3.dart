import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

List<int> t(String b) {
  List<int> l = [];
  String l1 = "";
  bool o = true;

  for (int i = 0; i < b.length; i++) {
    while (b[i] != " " && o) {
      l1 += b[i];
      if (i < b.length - 1) {
        i++;
      } else {
        o = false;
      }
    }
    l.add(int.parse(l1));
    l1 = "";
  }
  return l;
}

void main() async {
  var input = new File("input.txt");
  var output = new File("output.txt");
  Stream<String> l =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());

  List<String> a = [];
  await for (var line in l) {
    a.add(line);
  }

  List<int> luckyN = t(a[0]);
  List<int> nt = t(a[1]);

  var open = output.openWrite();

  for (int g = 0; g < nt[0]; g++) {
    List<int> nums = t(a[g + 2]);
    int num = 0;
    for (int i = 0; i < luckyN.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums[j] == luckyN[i]) {
          num++;
        }
      }
    }
    if (num >= 3) {
      open.write('Lucky\n');
    } else {
      open.write('Unlucky\n');
    }
  }
  open.close();
}
