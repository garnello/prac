import 'dart:io';
import 'dart:math';

void main() {
// Задание 5
  int k = 1;
  stdout.write("Введите текст: ");
  String text = stdin.readLineSync()!;

  for (int i = 0; i < text.length; i++) {
    if (text[i] == " ") {
      k++;
    }
  }
  print(k);
  print("Start " + text + " End");
}
