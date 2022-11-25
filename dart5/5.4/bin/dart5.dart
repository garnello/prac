import 'dart:io';

void main() {
  List<int> newMass = [];

  File('numsTask4.txt').readAsString().then((String contents) {
    var mass = contents.split(" ");
    print(mass);

    for (int i = 0; i < mass.length; i++) {
      int temp = 0;
      while ("$temp" != mass[i]) {
        temp++;
      }
      newMass.add(temp);
    }
    print(newMass);
    int max = newMass[0];
    for (int i = 0; i < mass.length; i++) {
      if (max < newMass[i]) {
        max = newMass[i];
      }
    }
    print(max);
    int sum = 0;
    for (int i = 0; i < newMass.length; i++) {
      if (newMass[i] == max - 1) {
        sum += newMass[i];
      }
    }
    print("сумму элементов, отличающихся от максимального на 1: $sum");
  });
}
