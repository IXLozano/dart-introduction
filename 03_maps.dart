void main() {
  //Key value pair
  final Map<String, dynamic> car = {
    'model': 'Mustang',
    'cylinders': 8,
    'isNew': true,
    'features': <String>['muscle car', 'sports car'],
    'images': {1: 'mustang/front.png', 2: 'mustang/back.png'}
  };

  print(car);
  print('Model: ${car['model']}');
  print('Images: ${car['images']}');

  print('Back Image: ${car['images'][2]}');
  print('Front Image: ${car['images'][1]}');

//Using fromJson mapper
  final Car car2 = Car.fromJson(car);

  print('My car is: ${car2.model}, ${car2.cylinders}, ${car2.features}');
}

class Car {
  final String model;
  final int cylinders;
  final bool isNew;
  final List<String> features;
  final String images;

  Car(
      {required this.model,
      required this.cylinders,
      required this.features,
      required this.images,
      required this.isNew});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        model: json['model'],
        cylinders: json['cylinders'],
        features: json['features'],
        images: json['images'],
        isNew: json['isNew']);
  }
}
