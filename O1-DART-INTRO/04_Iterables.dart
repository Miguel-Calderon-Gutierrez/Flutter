void main() {
  final number = [1, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 9, 10];

  print('Lista original: $number');
  print('Length: ${number.length}');
  print('index: ${number[0]}');
  print('First: ${number.first}');
  print('Reversed: ${number.reversed}');

  final reversedNumbres = number.reversed;
  print('Iterable: ${number[0]}');
}
