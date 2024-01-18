void main() {
  final double initialEnergy = 1000;
  final windPlant = WindPlant(initialEnergy: initialEnergy);
  final nuclearPlant = NuclearPlant(energyLeft: initialEnergy);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  plant.consumeEnergy(plant.energyLeft);
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

// Abstract class
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// WindPlant consumes only the 50% of the initial energy
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

// NuclearPlant consumes only the 10% of the initial energy
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.1);
  }
}
