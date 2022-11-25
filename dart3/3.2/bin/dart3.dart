import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  List<int> newMass = [];
  List<int> newMass_1 = [];
  var file = File('nums.txt');

  File('nums.txt').readAsString().then((String contents) {
    var mass = contents.split(" ");

    print(mass);
    for (int i = 0; i < mass.length; i++) {
      int temp = 0;
      while ("$temp" != mass[i]) {
        temp++;
      }
      newMass.add(temp);
    }

    for (int i = 0; i < newMass.length; i++) {
      if (newMass[i] % 2 == 1) {
        newMass_1.add(newMass[i]);
      }
    }
    print(newMass_1);

    var sink = file.openWrite();
    sink.write(newMass_1.join(" "));
    sink.close();
  });
}
