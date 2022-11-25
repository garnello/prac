import 'dart:io';
import 'dart:math';

void main() {
// Задание №2
  List<int> mass = [];
  int sum = 0, pro = 1, sre = 0;

  print("Давайте заполним массив");
  for (int i = 0; i < 100; i++) {
    print("Введите число под индексом: $i");
    int x = int.parse(stdin.readLineSync()!);
    if (x != 0) {
      mass.add(x);
    } else {
      break;
    }
  }
  print(mass);

  for (int i = 0; i < mass.length; i++) {
    sum += mass[i];
    pro *= mass[i];
    sre = sum ~/ mass.length;
  }

  print("Сумма: $sum, Произведение: $pro, Среднее: $sre");
}
