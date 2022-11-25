import 'dart:io';
import 'dart:math';

temperature(mass) {
  var newMass = [];
  for (int i = 0; i < mass.length; i++) {
    int temp = 0;
    for (int j = 0; j < mass.length; j++) {
      temp = (temp + mass[j][i]) as int;
    }
    temp = temp ~/ 30;
    newMass.add(temp);
  }
  return newMass;
}

void main() {
// Задание 4
  int min = 10, max = 30;
  var newMass = [];
  List<List<int>> mass = List.generate(
      12, (i) => List.generate(30, (j) => min + Random().nextInt(max)));

  for (int i = 0; i < mass.length; i++) {
    for (int j = 0; j < mass.length; j++) {
      stdout.write("${mass[i][j]} ");
    }
    print("");
  }

  newMass.addAll(temperature(mass));
  print(newMass);

  for (int i = 0; i < newMass.length; i++) {
    for (int j = 0; j < newMass.length; j++) {
      int temp = newMass[i];
      if (newMass[i] < newMass[j]) {
        newMass[i] = newMass[j];
        newMass[j] = temp;
      }
    }
  }
  print(newMass);
}
