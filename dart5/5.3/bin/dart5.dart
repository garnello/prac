import 'dart:io';

void main() {
  List<int> newMass = [];

  File("numsTask3.txt").readAsString().then((String contents) {
    var mass = contents.split(" ");
    print(mass);

    for (int i = 0; i < mass.length; i++) {
      int temp = 0;
      String prov = mass[i];
      if (prov[0] != "-") {
        while ("$temp" != mass[i]) {
          temp++;
        }
      } else if (mass[i] == "0") {
      } else {
        while ("$temp" != mass[i]) {
          temp--;
        }
      }
      newMass.add(temp);
    }
    print(newMass);

    int temp = newMass[0];
    for (int i = 0; i < newMass.length; i++) {
      if (temp > newMass[i]) {
        temp = newMass[i];
      }
    }
    int sum = 0;
    int chi = 0;
    for (int i = 0; i < newMass.length; i++) {
      if (newMass[i] != temp) {
        sum += newMass[i];
        chi++;
      }
    }
    temp = sum ~/ chi;
    print(
        "среднее арифметическое элементов расположенных до минимального: $temp");
  });
}
