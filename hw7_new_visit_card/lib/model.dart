class Student {
  Student({
    required this.id,
    required this.avatar,
    required this.name,
    required this.sureName,
    required this.age,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.group,
    this.gender,
    required this.status,
  });

  final int id;
  final String avatar;
  final String name;
  final String sureName;
  int age;
  String phoneNumber;
  final String email;
  String address;
  int group;
  final String? gender;
  String status;
}

final moldogazy = Student(
  id: 1,
  avatar: 'assets/_MG_3914.jpg',
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
  id: 2,
  avatar: 'assets/men.jpeg',
  name: 'DINMUKHAMED',
  sureName: 'ATAMBEKOV',
  age: 26,
  phoneNumber: '+491637912826',
  email: 'dinmukhamed@gmail.com',
  address: ' Stuttgart, Germany',
  group: 4,
  gender: 'male',
  status: 'married',
);

final kalybek = Student(
  id: 3,
  avatar: 'assets/men.jpg',
  name: 'KALYBEK',
  sureName: 'ATAMBEKOV',
  age: 12,
  phoneNumber: '+996757345765',
  email: 'kalybek@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 0,
  gender: 'male',
  status: 'single',
);
final nursultan = Student(
  id: 4,
  avatar: 'assets/_MG_3914.jpg',
  name: 'NURSULTAN',
  sureName: 'KABYLBEKOV',
  age: 18,
  phoneNumber: '+996990000333',
  email: 'nursultan@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 1,
  gender: 'male',
  status: 'single',
);
final kydyrnazar = Student(
  id: 5,
  avatar: 'assets/men.jpeg',
  name: 'KYDYRNAZAR',
  sureName: 'ULANBEK UULU',
  age: 24,
  phoneNumber: '+6770990292',
  email: 'kydyrnazar@gmail.com',
  address: ' Bishkek, Kyrgyzstan',
  group: 3,
  gender: 'male',
  status: 'single',
);
