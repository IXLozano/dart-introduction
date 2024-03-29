//Mixins, Composition

//Abstract --------------------------------------
abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

//Mixins --------------------------------------
mixin Flyer {
  void fly() => print('I am flying!');
}

mixin Walker {
  void walk() => print('I am walking!');
}

mixin Swimmer {
  void swim() => print('I am swimming!');
}

// Classes --------------------------------------
class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flyer, Walker {}

class Cat extends Mammal with Walker {}

class Duck extends Bird with Walker, Flyer, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

class Eagle extends Bird with Flyer, Walker {}

void main() {
  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.walk();
  batman.fly();

  final namor = Duck();
  namor.walk();
  namor.fly();
  namor.swim();

  final eagle = Eagle();
  eagle.fly();
  eagle.walk();
}
