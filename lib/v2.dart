void spiralOutputV2(List<List<int>> matr) {
  List<int> result = [];

  int top = 0;
  int bottom = matr.length - 1;
  int left = 0;
  int right = matr[0].length - 1;

  bool moveUp = false;
  bool moveDown = false;
  bool moveLeft = false;
  bool moveRight = true;

  int counter = matr.length * matr[0].length;

  for (int i = 0; counter > 0;) {
    if (moveRight) {
      if (i <= right) {
        result.add(matr[top][i]);
        i++;
        counter--;
      } else {
        moveRight = false;
        moveDown = true;
        top++;
        i = top;
      }
    }

    if (moveDown) {
      if (i <= bottom) {
        result.add(matr[i][right]);
        i++;
        counter--;
      } else {
        moveDown = false;
        moveLeft = true;
        right--;
        i = right;
      }
    }

    if (moveLeft) {
      if (i >= left) {
        result.add(matr[bottom][i]);
        i--;
        counter--;
      } else {
        moveLeft = false;
        moveUp = true;
        bottom--;
        i = bottom;
      }
    }

    if (moveUp) {
      if (i >= top) {
        result.add(matr[i][left]);
        i--;
        counter--;
      } else {
        moveUp = false;
        moveRight = true;
        left++;
        i = left;
      }
    }
  }

  print(result);
}