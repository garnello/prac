import 'dart:io';

void main() {
  int x = 3;
  int min_x = -1;
  int y = 4;
  int min_y = -2;

  stdout.write("Введите абциссу точки:");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Введите ординату точки: ");
  int b = int.parse(stdin.readLineSync()!);

  if (a <= x && a >= min_x && b >= min_y && b <= y) {
    print("Точка  пренадлежит координатам.");
  } else {
    print("Точка не пренадлежит координатам.");
  }
}
