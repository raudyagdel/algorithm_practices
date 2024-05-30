bool isValidMatrix(List<List<int>> matrix) {
  int n = matrix.length;
  int s = n * (n + 1) ~/ 2;
  for (int i = 0; i < n; i++) {
    int r = 0;
    int c = 0;

    for (int j = 0; j < n; j++) {
      r +=matrix[i][j];
      c += matrix[j][i];
    }

    if (r != s || c != s) {
      return false;
    }
  }

  return true;
}

void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [3, 1, 2],
    [2, 3, 1]
  ];

  List<List<int>> matrix2 = [
    [1, 2, 3],
    [1, 2, 3],
    [1, 2, 3]
  ];

  print(isValidMatrix(matrix1)); // Should print: true
  print(isValidMatrix(matrix2)); // Should print: false
}
