import 'dart:io';
import 'dart:math';

void main() {
// Задание 5
  Map mounths = <String, dynamic>{
    'January': new List.generate(31, (i) => -30 + Random().nextInt(15)),
    'February': new List.generate(28, (i) => -20 + Random().nextInt(10)),
    'March': new List.generate(31, (i) => -15 + Random().nextInt(10)),
    'April': new List.generate(30, (i) => -7 + Random().nextInt(10)),
    'May': new List.generate(31, (i) => 0 + Random().nextInt(18)),
    'June': new List.generate(30, (i) => 10 + Random().nextInt(25)),
    'July': new List.generate(31, (i) => 15 + Random().nextInt(30)),
    'August': new List.generate(31, (i) => 5 + Random().nextInt(25)),
    'September': new List.generate(30, (i) => 5 + Random().nextInt(18)),
    'October': new List.generate(31, (i) => -8 + Random().nextInt(18)),
    'November': new List.generate(30, (i) => -15 + Random().nextInt(15)),
    'December': new List.generate(31, (i) => -25 + Random().nextInt(15)),
  };

  averagetemp(mounths) {
    for (var name in mounths.keys) {
      num sum = 0;

      for (num e in mounths[name]) {
        sum += e;

        mounths[name] = sum ~/ 30;
      }
    }

    return mounths;
  }

  print(averagetemp(mounths));
}
