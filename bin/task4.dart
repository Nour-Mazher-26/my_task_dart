void main() {
  List<int> result1 = filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12);
  print(result1); //[2,8,12]

  List<int> result2 = filterNumbers(
    [1, 2, 5, 8, 12, 15],
    min: 2,
    max: 12,
    includeEven: false,
  );
  print(result2); //[2,5,8,12]
}

List<int> filterNumbers(
  List<int> numbers, {
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  List<int> filteredList = [];
  for (int i = 0; i < numbers.length; i++) {
    int currentNumber = numbers[i];
    bool inRange = currentNumber >= min && currentNumber <= max;
    if (inRange) {
      if (includeEven) {
        if (currentNumber % 2 == 0) {
          filteredList.add(currentNumber);
        }
      } else {
        filteredList.add(currentNumber);
      }
    }
  }
  return filteredList;
}
