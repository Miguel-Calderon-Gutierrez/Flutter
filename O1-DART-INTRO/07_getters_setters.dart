void main() {
  final mySquare = new Square(side: -5);
 // mySquare.side = -8;
  print(mySquare.area);
}

class Square {
  double _side;

  Square({required double side}) :
    assert(side >= 0,'side must be >= 0'),
   _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('set value of site of square $_side to $value ');
    if (value < 0) throw 'value must be >= 0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
