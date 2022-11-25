import 'dart:io';
import 'dart:math';

void main() {
// Задание №1
  int min = -100;
  var mass = List.generate(10, (i) => min + Random().nextInt(200));
  print(mass);

  int temp = mass[0];
  int y = 0;
  for (int i = 0; i < mass.length; i++) {
    if (temp > mass[i]) {
      temp = mass[i];
      y = i;
    }
  }
  print("Индекс минимального элемента в массиве: $y");
}
