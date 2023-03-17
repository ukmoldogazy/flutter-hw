// import 'package:operators/operators.dart' as operators;

void main(List<String> arguments) {
  print('This\'s adder: $adder(12, 44)');
  final addOnceMore = 45 + adder(4334, 22);
  print('Thi\'s one more time adder: $addOnceMore');

  final substract = addOnceMore - 2323;
  print('This\'s substraction: $substract');

  print('----------------');

  print(substracter(12, 21));

  print(milti(12, 21));
}

// Functions
int adder(int a, int b) {
  final result = a + b;
  return result;
}

int substracter(int a, int b) {
  final results = a - b;
  return results;
}

num milti(num a, num b) {
  final result = a * b;
  return result;
}

num divider(num a, num b) {
  final result = a / b;
  return result;
}

// https://youtu.be/i7aaXLb5Qpo?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=1259