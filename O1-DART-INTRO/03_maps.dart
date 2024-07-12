void main() {

  final Map<String, dynamic> pokemon = {
    'name': "Ditto",
    'hp': 100,
    'isAlive': true,
    'sprites': {1: 'Ditto/1.png', 2: 'Ditto/2.jpg'}
  };

  print(pokemon);
  print(pokemon['sprites'][2]);
  print(pokemon['sprites'][1]);

  
}