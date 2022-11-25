import 'dart:io';
import 'dart:math';

void main() {
// Задание №3
  var mass = [];

  print("Давайте заполним массив");
  for (int i = 0; i < 100; i++) {
    print("Введите число под индексом: $i");
    var x = stdin.readLineSync()!;
    if (x != "") {
      mass.add(x);
    } else {
      break;
    }
  }
  print(mass);

  var x = mass[0].length;
  var y = mass[0], z = mass[0];
  for (int i = 0; i < mass.length; i++) {
    for (int j = 0; j < mass.length; j++) {
      if (x < mass[j].length) {
        x = mass[j].length;
        y = mass[j];
      }
    }
    x = mass[0].length;
    for (int j = 0; j < mass.length; j++) {
      if (x > mass[j].length) {
        x = mass[j].length;
        z = mass[j];
      }
    }
  }
  print("Самый длинный элемент массива: $y");
  print("Самый короткий элемент массива: $z");
}
