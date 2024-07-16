void main() {
  print(greetEveryone());
  print('suma ${addTwoNumbers2(15, 20)}');
  print(saludarPersona(name: "Miguel"));
}

String greetEveryone() {
  return "Hola a todos";
}

String greetEveryone2() => "Hola a todos";

int addTwoNumbers(int a, [int? b = 0]) {
  b = b ?? 0;
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

String saludarPersona({required String name, String message = "Hola, "}) {
  return message + name;
}
