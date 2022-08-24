int binarySearch(List<int> list, int value) {
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (list[mid] == value) {
      return mid;
    } else if (list[mid] < value) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var value = 7;
  var index = binarySearch(list, value);
  print('$value is at index $index');
}
