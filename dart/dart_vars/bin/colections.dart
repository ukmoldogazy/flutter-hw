void main() {
  // List ()
  // List printList = ['MOLDOGAZY', 23, 2332, 2323.33, false, true];
  // print(printList);

  // Set{} is that which it doesn't return dublicate items. A bit same with List collection
  // Set printSet = {true, false, 4999, 22.1121, 4999, 'MOLDOGAZY', 4999, 4999};
  // print(printSet);

  // Map{}
  // Map printMap = {
  //   'Hello': 'Salam',
  //   20: 'Free',
  //   'follow': 30,
  // };
  // print(printMap);

  // Generic ----->  <>
  List genericListString = <String>['Salam bro', '333'];
  print(genericListString);
  List genericListInt = <int>[33, 2332];
  print(genericListInt);
  Map genericMapDynamic = <dynamic, String>{
    33: '333',
  };
  print(genericMapDynamic);
}
