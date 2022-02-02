import 'package:a5_spiral_output/v1.dart';
import 'package:a5_spiral_output/v2.dart';

void main() {
  List<List<int>> matr = [
    [1, 2, 4, 6, 1],
    [2, 9, 5, 8, 2],
    [3, 3, 5, 6, 7],
    [3, 5, 1, 0, 4]
  ];

  print('Spiral ouput V1');
  spiralOutputV1(matr);
  print('-'*20);
  print('Spiral ouput V1');
  spiralOutputV2(matr);
}
