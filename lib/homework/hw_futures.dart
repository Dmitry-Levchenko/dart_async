Future<String> fetchName() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () => 'Дмитро',
  );
}

Future<String> fetchAge() async {
  return await Future.delayed(
    Duration(milliseconds: 1500),
    () => '36',
  );
}

String pluralizeYear(int age) {
  int lastDigit = age % 10;
  int lastTwoDigits = age % 100;

  if (lastTwoDigits >= 11 && lastTwoDigits <= 14) {
    return 'років';
  }

  if (lastDigit == 1) {
    return 'рік';
  } else if (lastDigit >= 2 && lastDigit <= 4) {
    return 'роки';
  } else {
    return 'років';
  }
}

void main() async {
  await task1();
  await task2();
  await task3();
  // await task4();
  // await task5();
}

// ============================
// TASK 1
// ============================

Future<void> task1() async {
  String name = await fetchName();
  print('Мене звати $name');
}

// ============================
// TASK 2
// ============================

Future<void> task2() async {
  String ageStr = await fetchAge();
  int age = int.parse(ageStr);
  String suffix = pluralizeYear(age);
  print('Мені $age $suffix');
}

// ============================
// TASK 3
// ============================

Future<void> task3() async {
  Stopwatch stopwatch = Stopwatch()..start();

  String name = await fetchName();
  String ageStr = await fetchAge();
  int age = int.parse(ageStr);
  String suffix = pluralizeYear(age);

  stopwatch.stop();

  print('Імʼя: $name');
  print('Вік: $age $suffix');
  print('Загальний час виконання: ${stopwatch.elapsedMilliseconds} мілісекунд');
}
