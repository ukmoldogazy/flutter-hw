Map response = {
  'cars': [
    {
      'brand': 'Mercedes-Benz',
      'years': 343,
      'carNumber': '3423',
    },
    {
      'brand': 'Porsche',
      'years': 2024,
      'carNumber': 'KG007',
    },
    {
      'brand': 'Tesla',
      'years': 2000,
      'carNumber': 'KG700',
    },
    {
      'brand': 'Cybertruck',
      'years': 2030,
      'carNumber': 'KG000',
    },
  ],
};

class Car {
  Car({
    required this.brand,
    required this.years,
    required this.carNumber,
  });

  final String brand;
  final int years;
  final String carNumber;

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      brand: json['brand'],
      years: json['years'],
      carNumber: json['carNumber'],
    );
  }
}

void main() {
  final car0 = Car(
    brand: response['cars'][0]['brand'],
    years: response['cars'][0]['years'],
    carNumber: response['cars'][0]['carNumber'],
  );

  final car1 = Car(
    brand: response['cars'][1]['brand'],
    years: response['cars'][1]['years'],
    carNumber: response['cars'][1]['carNumber'],
  );

  final car2 = Car(
    brand: response['cars'][2]['brand'],
    years: response['cars'][2]['years'],
    carNumber: response['cars'][2]['carNumber'],
  );

  final car3 = Car(
    brand: response['cars'][3]['brand'],
    years: response['cars'][3]['years'],
    carNumber: response['cars'][3]['carNumber'],
  );
  final car4 = Car.fromJson(response['cars'][0]);
  final car5 = Car.fromJson(response['cars'][1]);
  final car6 = Car.fromJson(response['cars'][2]);
  final car7 = Car.fromJson(response['cars'][3]);

  print('Simple===============');
  print("${car0.brand}, ${car0.years}, ${car0.carNumber}");
  print("${car1.brand}, ${car1.years}, ${car1.carNumber}");
  print("${car2.brand}, ${car2.years}, ${car2.carNumber}");
  print("${car3.brand}, ${car3.years}, ${car3.carNumber}");

  print('\nFactory===============');
  print("${car4.brand}, ${car4.years}, ${car4.carNumber}");
  print("${car5.brand}, ${car5.years}, ${car5.carNumber}");
  print("${car6.brand}, ${car6.years}, ${car6.carNumber}");
  print("${car7.brand}, ${car7.years}, ${car7.carNumber}");
}
