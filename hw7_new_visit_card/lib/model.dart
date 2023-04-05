class Student {
  Student({
    required this.id,
    required this.name,
    required this.sureName,
    required this.age,
    this.phoneNumber,
    required this.email,
    required this.address,
    required this.group,
    this.gender,
    required this.status,
  });

  final int id;
  final String name;
  final String sureName;
  int age;
  String? phoneNumber;
  final String email;
  String address;
  int group;
  final String? gender;
  String status;
}

final moldogazy = Student(
  id: 1,
  name: 'MOLDOGAZY',
  sureName: 'KABYLBEKOV',
  age: 22,
  phoneNumber: '+996700010755',
  email: 'ukmoldogazy@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 4,
  status: 'single',
);

final dinmukhamed = Student(
  id: 1,
  name: 'DINMUKHAMED',
  sureName: 'ATAMBEKOV',
  age: 22,
  email: 'dinmukhamed@gmail.com',
  address: ' Stuttgart, Germany',
  group: 4,
  gender: 'male',
  status: 'married',
);

final kalybek = Student(
  id: 1,
  name: 'KALYBEK',
  sureName: 'ATAMBEKOV',
  age: 22,
  email: 'kalybek@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 0,
  gender: 'male',
  status: 'single',
);

List students = <Student>[moldogazy, dinmukhamed, kalybek];
