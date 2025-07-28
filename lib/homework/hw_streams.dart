// ============================
// TASK 6
// ============================

void main() async {
  await task6();
  await task7();
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

// ============================
// TASK 7
// ============================

Stream<int> countdownStream(int seconds) {
  return Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(seconds);
}

Future<void> task7() async {
  await for (int number in countdownStream(10)) {
    print('$number...');
  }
}