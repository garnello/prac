import 'dart:io';

void main() {
  int x = 2;
  int min_x = -2;
  int x_middle = 0;
  int y = 2;
  int min_y = -3;
  int y_middle = -3;

  stdout.write("Введите абциссу точки:");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Введите ординату точки: ");
  double b = double.parse(stdin.readLineSync()!);

  double ex = (min_x - a) * (y - min_y) - (x_middle - min_x) * (min_y - b);
  double ey = (x_middle - a) * (y_middle - y) - (x - min_x) * (y - b);
  double ec = (x - a) * (min_y - y_middle) - (min_x - x) * (y_middle - b);

  if ((ex >= 0 && ey >= 0 && ec >= 0) || (ec <= 0 && ey <= 0 && ec <= 0)) {
    print("Точка  пренадлежит координатам.");
  } else {
    print("Точка не пренадлежит координатам.");
  }
}
