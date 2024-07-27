void main() {
  emitNumbers().listen((int value) {
    print("Stream value: $value");
  });
}

Stream<int> emitNumbers() async* {
  final valueToEmit = [1, 2, 3, 4, 5];

  for (int value in valueToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield value;
  }


}
