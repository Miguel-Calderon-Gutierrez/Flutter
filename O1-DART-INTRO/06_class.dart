void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneration');
  final Hero deadpool = new Hero(name: 'Deadpool');

  print(wolverine.toString());
  print(deadpool.toString());
}

class Hero {
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
