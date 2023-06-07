import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final result = weight / pow(height / 100, 2);
    return result;
  }

  String bmiResult(result) {
    if (result <= 18.5) {
      // debugPrint('You are underweight: $result');
      // _showAlertDialog(context, 'You are underweight: $result');
      return 'You are underweight';
    } else if (result >= 18.6 && result <= 25) {
      // debugPrint('You are normal: $result');
      // _showAlertDialog(context, 'You are normal: $result');
      return 'You are normal';
    } else if (result >= 25.1 && result <= 30) {
      // debugPrint('You are overweight: $result');
      // _showAlertDialog(context, 'You are overweight: $result');
      return 'You are overweight';
    } else if (result >= 30.1 && result <= 35) {
      // debugPrint('You are obesity: $result');
      // _showAlertDialog(context, 'You are obesity: $result');
      return 'You are obesity';
    } else {
      // debugPrint('You are super triple obesity: $result');
      // _showAlertDialog(context, 'You are super triple obesity: $result');
      return 'You are super triple obesity';
    }
  }

  String bmiDescription(result) {
    if (result <= 18.5) {
      // debugPrint('You are underweight: $result');
      // _showAlertDialog(context, 'You are underweight: $result');
      return 'You are underweight. You have to eat more.';
    } else if (result >= 18.6 && result <= 25) {
      // debugPrint('You are normal: $result');
      // _showAlertDialog(context, 'You are normal: $result');
      return 'You are normal and you are healthy. Well done!';
    } else if (result >= 25.1 && result <= 30) {
      // debugPrint('You are overweight: $result');
      // _showAlertDialog(context, 'You are overweight: $result');
      return 'You are overweight. You have to cut out eating.';
    } else if (result >= 30.1 && result <= 35) {
      // debugPrint('You are obesity: $result');
      // _showAlertDialog(context, 'You are obesity: $result');
      return 'You are obesity. You need to do excercise.';
    } else {
      // debugPrint('You are super triple obesity: $result');
      // _showAlertDialog(context, 'You are super triple obesity: $result');
      return 'You are super triple obesity. Oh no now way.';
    }
  }
}
