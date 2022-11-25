import 'dart:io';
import 'dart:math';

void main() {
// Задание 3

  stdout.write("Введите размер массива: ");
  int a = int.parse(stdin.readLineSync()!);
  List<List<int>> mass = List.generate(a, (i) => List.generate(a, (j) => 1));

  for (int i = 1; i < a; i++) {
    for (int j = 1; j < a; j++) {
      mass[i][j] = mass[i - 1][j] + mass[i][j - 1];
    }
  }

  for (int i = 0; i < a; i++) {
    for (int j = 0; j < a; j++) {
      if (mass[i][j].toString().length == 1) {
        stdout.write(" ${mass[i][j]}  ");
      } else {
        stdout.write("${mass[i][j]}  ");
      }
    }
    print(" ");
  }
}
