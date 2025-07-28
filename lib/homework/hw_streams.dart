// ============================
// TASK 6
// ============================

void main() async {
  await task6();
}

Stream<int> numberStream() {
  return Stream.fromIterable([1, 2, 3, 4, 5]);
}

Future<void> task6() async {
  print('await for');
  await for (int number in numberStream()) {
    print(number);
  }

  print('listen');
  numberStream().listen((number) {
    print(number);
  });
}