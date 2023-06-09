// 50:00 ------  https://youtu.be/HRsufx_Yu44?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=3000

import 'dart:io';

void main(List<String> arguments) {
  resultTask();
}

void resultTask() async {
  task1();
  // task2();
  String stringTask3 = await task3();
  task4(stringTask3);
}

void task1() {
  print('Task1');
}

//  Syncronous-------------
// void task2() {
//   Duration fiveSeconds = Duration(seconds: 5);
//   sleep(fiveSeconds);
//   print('Task2');
// }

//  Asyncronous-------------
Future<String> task3() async {
  Duration fiveSeconds = Duration(seconds: 5);
  String? result;
  await Future.delayed(fiveSeconds, () {
    result = 'Task3\'s Datas';
    print('Task3');
  });
  return result.toString();
}

void task4(String task3String) {
  print('Task4 : $task3String');
}
