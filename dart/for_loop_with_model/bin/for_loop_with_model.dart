import 'package:for_loop_with_model/model.dart';

final students = <Student>[
  moldogazy,
  dinmukhamed,
  kalybek,
  nursultan,
  kydyrnazar
];

void main() {
  controllerNameEmail('DINMUKHAMED', 'dinmukhamed@gmail.com');
}

void controllerNameEmail(String name, String email) {
  for (final student in students) {
    if (name == student.name && email == student.email) {
      print('Welcome ${student.name}');
      break;
    } else {
      print("You're found in our data base.");
    }
  }
}
