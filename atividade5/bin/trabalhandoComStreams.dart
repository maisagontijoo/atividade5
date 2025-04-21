import 'dart:async';

void main(List<String> arguments) async {
  geradorComErro(6).listen(
    (valor) => print("Valor: $valor"),
    onError: (erro) => print("Erro: $erro"),
    onDone: () => print("Stream finalizada"),
  );

  try {
    await for (var valor in geradorComErro(6)) {
      print("Valor com await-for: $valor");
    }
  } catch (e) {
    print("Erro com await-for: $e");
  }

  var novaStream = geradorComErro(6)
      .map((e) => e * 2)
      .where((e) => e % 2 == 0)
      .take(3);

  await for (var valor in novaStream) {
    print("Transformado: $valor");
  }
}

Stream<int> geradorComErro(int n) async* {
  for (int i = 1; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i == (n / 2).round()) {
      throw Exception("Erro no valor $i");
    }
    yield i;
  }
}