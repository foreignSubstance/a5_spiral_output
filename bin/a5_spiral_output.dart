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
  final v1 = Stopwatch()..start();
  spiralOutputV1(matr);
  v1.stop;
  print('-' * 20);
  print('Spiral ouput V2');
  final v2 = Stopwatch()..start();
  spiralOutputV2(matr);
  v2.stop;
  print('\nВремя выполнения V1 (мс) ${v1.elapsed.inMicroseconds}');
  print('Время выполнения V2 (мс) ${v2.elapsed.inMicroseconds}');
}
