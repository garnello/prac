import 'dart:io';
import 'dart:math';

void main() {
// Задание 1
  List<int> mass = List.generate(100, (index) => 0);
  mass[0] = 300;
  int a = 0;

  for (int i = 1; i < mass.length; i++) {
    mass[i] = mass[a] - 3;
    a++;
  }
  print(mass);
}
