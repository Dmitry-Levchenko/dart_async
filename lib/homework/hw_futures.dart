// ============================
// MAIN
// ============================

void main() async {
  task1();
  task2();
 // task3();
 // task4();
 // task5();
}

// ============================
// TASK 1: Асинхронне отримання імені
// ============================

Future<void> task1() async {
  Future<String> fetchName() async {
    return await Future.delayed(
      Duration(seconds: 2),
      () => 'Дмитро',
    );
  }

  String name = await fetchName();
  print('Мене звати $name');
}

// ============================
// TASK 2: Асинхронне отримання віку
// ============================

Future<void> task2() async {
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

  String ageStr = await fetchAge();
  int age = int.parse(ageStr);
  String suffix = pluralizeYear(age);
  print('Мені $age $suffix');
}