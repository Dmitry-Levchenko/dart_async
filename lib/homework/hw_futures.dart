void main() async {
  await task1();
 // await task2();
 // await task3();
 // await task4();
 // await task5();
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
