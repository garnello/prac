import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.write('Введите размер матрицы n: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('Введите размер матрицы m: ');
  int m = int.parse(stdin.readLineSync()!);
  List<List<int>> nums = new List.generate(
      n, (i) => List.generate(m, (j) => 0 + Random().nextInt(2)));
  List<List<int>> nums2 =
      new List.generate(n, (i) => List.generate(m + 1, (j) => 0));

  nums.forEach((nums) {
    print(nums);
  });
  print(' ');
  int temp = 0;
  for (int i = 0; i < n; i++) {
    temp = 0;
    for (int j = 0; j < m; j++) {
      nums2[i][j] = nums[i][j];
      temp += nums[i][j];
    }

    if (temp % 2 > 0) {
      nums2[i][m] += 1;
    }
  }
  nums2.forEach((nums2) {
    print(nums2);
  });
}
