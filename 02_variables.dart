void main() {
  final String carModel = 'Mustang';
  final int hp = 480;
  final bool isElectric = false;
  final List<String> extras = ['down pipe'];
  final assets = <String>['mustang/front.png', 'mustang/back.png'];

// dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $carModel
  $hp
  $isElectric
  $extras
  $assets
  $errorMessage
  """);
}
