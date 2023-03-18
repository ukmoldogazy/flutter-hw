import 'dart:math';

void main(List<String> arguments) {
  print('------------- Adder -------------');
  final addOnceMore = 45 + adder(4334, 22);
  print('Thi\'s one more time adder: $addOnceMore');

  print('------------- Substraction -------------');
  final substract = addOnceMore - 2323;
  print('This\'s substraction: $substract');
  print(substracter(12, 21));

  print('------------- Multiplication -------------');
  print(milti(12, 21));

  print('------------- Divider -------------');
  print(divider(12, 222));

  print('------------- Divider Intager -------------');
  print(divInt(12, 222));

  print('------------- Remainder -------------');
  print(remainder(12, 222));

  print('------------- List -------------');
  print(a[1]);

  print('------------- Random -------------');
  print('intValue: $intValue, nextDouble: $nextDouble, nextBool: $nextBool');
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

num divInt(num a, int b) {
  final result = a ~/ b;
  return result;
}

num remainder(int a, int b) {
  final result = a % b;
  return result;
}

List a = <String>['a', 'b', 'c', 'd'];

var intValue = Random().nextInt(100);
var nextDouble = Random().nextDouble();
var nextBool = Random().nextBool();
