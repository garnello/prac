import 'dart:io';

void main() {
  var file = File("numsTask3.txt");
  List<int> newMass = [];

  File("numsTask3.txt").readAsString().then((String contents) {
    var mass = contents.split(", ");
    print(mass);

    for (int i = 0; i < mass.length; i++) {
      int temp = 0;
      String prov = mass[i];
      if (mass[i] != "0") {
        if (prov[0] != "-") {
          while ("$temp" != mass[i]) {
            temp++;
          }
        } else {
          while ("$temp" != mass[i]) {
            temp--;
          }
        }
      } else {
        break;
      }
      newMass.add(temp);
    }
    print(newMass);

    int min = newMass[0];
    int max = newMass[0];
    for (int i = 0; i < newMass.length; i++) {
      if (min > newMass[i]) {
        min = newMass[i];
      }
      if (max < newMass[i]) {
        max = newMass[i];
      }
    }
    print(min / max);
  });
}
