import 'dart:io';
import 'dart:math';

void main() {
  int sum = 0;
  int a = Random().nextInt(10);
  print(a);

  for (int i = 0; i < 100; i++) {
    stdout.write("Введите число: ");
    int temp = int.parse(stdin.readLineSync()!);
    if (temp > 0) {
      if (temp % a == 0) {
        sum += temp;
      }
    } else {
      break;
    }
  }
  print("Cумма чисел, делящихся на положительное число a нацело: $sum");
}
