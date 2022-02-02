void spiralOutputV1(List<List<int>> inputList) {
  List<List<int>> result = [];
  while (true) {
    if (inputList.length > 1) {
      result.add(inputList[0]);         //добавляем только первую строчку в результирующую матрицу
      inputList = inputList.sublist(1, inputList.length);   //убираем первую строчку из исходной матрицы
      inputList = rotateMatrix(inputList);    //поворачиваем исходную матрицу на 90 градусов против часовой стрелки
    } else if (inputList.length == 1) {
      result.add(inputList[0]);   //если в исходной матрице остался всего один элемент, то добавляем его в результирующую и выходим из цикла
      break;
    }
  }
  print(result);
}

List<List<int>> rotateMatrix(List<List<int>> inputList) {
  List<List<int>> result = [];
  List<int> buf = [];
  int j = inputList[0].length - 1;
  int i = 0;
  while (i < inputList.length) {
    buf.add(inputList[i][j]);
    if (i == inputList.length - 1) {
      i = 0;
      j--;
      result.add(buf);
      buf = <int>[];
    } else {
      i++;
    }
    if (j < 0) break;
  }
  return result;
}