import 'dart:io';

void main() {
  List<int> newMass = [];
  var file = File("numsTask4.txt");

  File("numsTask4.txt").readAsString().then((String contents) {
    var mass = contents.split(" ");

    for (int i = 0; i < mass.length; i++) {
      int temp = 0;
      while ("$temp" != mass[i]) {
        temp++;
      }
      newMass.add(temp);
    }
    print(newMass);

    int temp = 0;
    for (int i = 0; i < newMass.length - 1; i++) {
      if (newMass[i] == newMass[i + 1]) {
        temp++;
      }
    }
    print("Колличество одинаковых рядом стоящих чисел: $temp");
  });
}
