void main() {
  final String name = "Poke";
  final int hp = 100;
  final bool isAlive = false;
  final List<String> list = ["Hola", "mundo"];
  final list2 = <String>["chao", "con", "adios"];

//dynamic inicia en null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = 10;
  errorMessage = [1, 2, 3, 4, 5, 6, 7, 8];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => false;
  errorMessage = null;


  print("""
          $name
          $hp
          $isAlive
          $list
          $list2
          $errorMessage
       """);

}
