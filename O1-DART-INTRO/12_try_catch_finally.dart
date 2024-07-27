void main() async {
  print("Inicio del programa ");

  try {
    final value = await httpGet("http://localhost");
    print(value);
  } on Exception catch(err) {
    print("Error en la petición: $err");
  }catch (e) {
    print("Opps algo mal en la petición: $e");
  } finally {
    print("Fin del try y catch ");
  }

  print("Fin del programa ");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  //throw Exception("No hay parametros en la URL");
  throw "Error en la petición";
  //return "http://localhost";
}
