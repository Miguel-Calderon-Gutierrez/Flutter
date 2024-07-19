void main() {
  final windPlant = new WindPlant(inicialEnery: 100.0);
  print(windPlant); 
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
