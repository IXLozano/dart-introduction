void main() {
  final Map<String, dynamic> car = {
    'carModel': 'Mustang',
    'hp': 100,
    'isElectric': false,
    'extras': <String>['02_variables.dart'],
    'assets': {1: 'mustang/front.png', 2: 'mustang/back.png'}
  };

  print(car);
  print('Name: ${car['name']}');
  print('Name: ${car['sprites']}');

  print('Back: ${car['sprites'][2]}');
  print('Front: ${car['sprites'][1]}');
}
