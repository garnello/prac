import 'dart:io';
import 'dart:math';

func(int min, int max) {
  var mass = List.generate(10, (i) => min + Random().nextInt(max));
  return mass;
}

void main() {
// Задание №4
  var mass = [];

  stdout.write("Введите минимальное число диапазона: ");
  int min = int.parse(stdin.readLineSync()!);
  stdout.write("Введите максимальное число диапазона: ");
  int max = int.parse(stdin.readLineSync()!);

  mass.addAll(func(min, max));

  for (int i = 0; i < 10; i++) {
    stdout.write("${mass[i]} ");
  }
}
