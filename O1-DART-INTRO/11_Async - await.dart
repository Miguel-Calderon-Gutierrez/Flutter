void main() async {
  print("Inicio del programa ");

  try {
    final value = await httpGet("http://localhost");
    print(value);
  } catch (e) {
    print("Error en la petición: $e");
  }


  print("Fin del programa ");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  //throw "Error en la petición";
  return "http://localhost";
  
}
