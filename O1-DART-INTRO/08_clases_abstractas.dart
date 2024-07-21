void main() {
  final windPlant = new WindPlant(inicialEnery: 100.0);
  final nuclearplant = new NuclearPlant();

  print('wind: ${chargePhone(windPlant)}');
  print('Noclear: ${chargePhone(nuclearplant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLedt < 10) {
    throw Exception("not enough energy");
  }

  return plant.energyLedt - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLedt;
  PlantType type;

  EnergyPlant({required this.energyLedt, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required inicialEnery})
      : super(energyLedt: inicialEnery, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    print("Consumiendo energia: $amount kWh");
    energyLedt -= amount;
  }
}

//pendiente de implements vs extends
class NuclearPlant implements EnergyPlant {

double energyLedt;
PlantType type;

  NuclearPlant({required inicialEnery}) : super(energyLedt: inicialEnery, type: PlantType.nuclear);
  @override
  void consumeEnergy(double amount) {
    print("Consumiendo energia: $amount kWh");
    energyLedt -= (amount*0.5);
  }
}
