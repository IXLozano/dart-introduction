enum CarType { combustion, electric }

void main() {
  const String carModel = 'Mustang';
  const int cylinder = 0;
  const bool isNew = true;
  final List<String> features = ['muscle car', 'sports car'];
  final images = <String>['mustang/front.png', 'mustang/back.png'];
  final CarType type;

  // Enum for car type
  if (cylinder > 0) {
    type = CarType.combustion;
  } else {
    type = CarType.electric;
  }

  dynamic sampleDynamic = 'Hello'; // String
// sampleDynamic = false;               // bool
// sampleDynamic = [1, 2, 3, 4, 5, 6];  // List<int>
// sampleDynamic = {1, 2, 3, 4, 5, 6};  // Set<int>
// sampleDynamic = () => true;          // Function returning bool
// sampleDynamic = null;                // null

  print("""
  Car Model: $carModel
  Cylinder Count: $cylinder
  Is New: $isNew
  Features: $features
  Images: $images
  Car Type: $type
  Sample Dynamic: $sampleDynamic
  """);
}
