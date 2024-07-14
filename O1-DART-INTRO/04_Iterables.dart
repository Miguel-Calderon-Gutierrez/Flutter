void main() {
  final numbers = [1, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 9, 10];

  print('Lista original: $numbers');
  print('Length: ${numbers.length}');
  print('index: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbres = numbers.reversed;
  print('Iterable: $reversedNumbres');
  print('list: ${numbers.toList()}');
  print('set: ${numbers.toSet()}');

  int x = 5;

  final numbersGreaterThanX = numbers.where((int num) {
    return num > x;
  });

print('>5 iterable: $numbersGreaterThanX');
print('>5 set: ${numbersGreaterThanX.toSet()}');

}
