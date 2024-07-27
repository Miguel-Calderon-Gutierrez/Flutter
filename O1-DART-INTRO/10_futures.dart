void main() {
  print("Inicio del programa ");
  httpGet("http://localhost").then((value) {
    print("get: $value");
  }).catchError((Error) {
    print("Ups, algo salió mal: $Error");
  });
  print("Fin del programa ");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw " Error en la petición http";
    //return "Respuesta del get";
  });
}
