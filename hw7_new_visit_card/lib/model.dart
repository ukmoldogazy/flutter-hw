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
  age: 26,
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
  age: 12,
  email: 'kalybek@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 0,
  gender: 'male',
  status: 'single',
);
final nursultan = Student(
  id: 1,
  name: 'NURSULTAN',
  sureName: 'KABYLBEKOV',
  age: 12,
  email: 'nursultan@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 1,
  gender: 'male',
  status: 'single',
);
final kydyrnazar = Student(
  id: 1,
  name: 'KYDYRNAZAR',
  sureName: 'ULANBEK UULU',
  age: 12,
  email: 'kydyrnazar@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 3,
  gender: 'male',
  status: 'single',
);
