import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  List<String> lines = new File('height.txt').readAsLinesSync();
  for (var line in lines) {
    lines = line.split(' ');
  }
  List<int> s = lines.map(int.parse).toList();

  int area = 0;

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      area = max(area, min(s[j], s[i]) * (j - i));
    }
  }

  print(area);
}
