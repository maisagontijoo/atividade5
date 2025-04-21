void main(List<String> arguments) async {
  buscarDadosWeb("https://site.com/dart")
      .then((resultado) => print("Resultado: $resultado"))
      .catchError((e) => print("Erro: $e"));

  try {
    String resultadoComAwait = await buscarDadosWeb("https://dart.dev");
    print("Resultado com await: $resultadoComAwait");
  } catch (e) {
    print("Erro com await: $e");
  }

  try {
    List<String> resultadosParalelos = await Future.wait([
      buscarDadosWeb("https://dart.dev"),
      buscarDadosWeb("https://site.com/dart"),
      buscarDadosWeb("https://dartlang.org")
    ]);
    print("Resultados paralelos: $resultadosParalelos");
  } catch (e) {
    print("Erro em Future.wait: $e");
  }
}

Future<String> buscarDadosWeb(String url) async {
  await Future.delayed(Duration(seconds: 2));
  if (url.contains("dart")) {
    return "Dados da $url";
  } else {
    throw Exception("URL inválida");
  }
}