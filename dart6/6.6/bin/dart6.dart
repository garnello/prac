import 'dart:math';
import 'dart:io';

void main() {
  var more = [];
  var less = [];
  int equally = 0;

  zap() {
    var rng = new Random();
    List<double> l = new List.generate(
        25, (j) => -100 + (100 - (-100)) * Random().nextDouble());
    return l;
  }

  var temp = zap();

  func1(temp) {
    for (int i = 0; i < temp.length; i++) {
      if (temp[i] < 0) {
        less.add(temp[i]);
      }
    }
    return less;
  }

  func2(temp) {
    for (int i = 0; i < temp.length; i++) {
      if (temp[i] == 0) {
        equally += 1;
      }
    }
    return equally;
  }

  func3(temp) {
    for (int i = 0; i < temp.length; i++) {
      if (temp[i] > 0) {
        more.add(temp[i]);
      }
    }
    return more;
  }

  print(temp);
  print("чисел меньше нуля: ${func1(temp)}");
  print(" ");
  print("чисел больше нуля: ${func3(temp)}");
}
