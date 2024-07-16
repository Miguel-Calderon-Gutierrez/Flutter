void main() {
  // final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneration');
  // final Hero deadpool = new Hero(name: 'Deadpool');
  // print(wolverine.toString());
  // print(deadpool.toString());

  final rawJson = {'name': 'Logan', 'power': 'Regeneration', 'isAlive': true};

  final wolverin = Hero.fromJson(rawJson);
  final ironman = new Hero(name: "Ironman ", power: "Money", isAlive: false);

  print(ironman);
  print(wolverin);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return "Hero: $name, power: $power, isAlive:${isAlive ? "yes" : "nope"}";
  }
}

/* class Hero {
  String name;

  String power;

  Hero({
    required this.name,
    this.power = "not power",
  });

  //Hero(this.name, this.power);
  /*
  Hero(String name, String power)
      : this.name = name,
        this.power = power;
        
  */

  @override
  String toString() {
    return 'Hero name: $name, power: $power';
  }
}
*/