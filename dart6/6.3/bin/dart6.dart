import 'dart:io';
import 'dart:math';

void main() {
  int k = Random().nextInt(100);

  if (k % 2 == 0 && k % 10 == 0) {
    print("Число $k является четным и кратным 10");
  } else {
    print("Увы, число $k не является четным и кратным 10");
  }
}
