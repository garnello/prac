import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('numsTask5.txt').readAsLinesSync();
  for (var line in file) {
    var splited = line.split(' ');
    file = splited;
  }
  List<String> mas = [];
  for (var i = 0; i < file.length; i++) {
    if (file[i] != '') {
      mas.add(file[i]);
    }
  }
  List<int> nums = mas.map(int.parse).toList();

  int num = 0;
  int maxv = nums.reduce(max);
  int maxi = nums.indexOf(maxv);
  int minv = nums.reduce(min);
  int i = nums.indexOf(minv) + 1;

  int f = maxi - i;
  for (i; i < maxi; i++) {
    num += nums[i];
  }

  var sra = num / f;

  print(
      'среднее арифметическое элементов расположенных между минимальными и максимальными числами: $sra');
}
