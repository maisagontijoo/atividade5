import 'dart:async';

void main(List<String> arguments) async {
  int tempoTotal = 0;

  for (int i = 1; i <= 5; i++) {
    int duracao = i + 1;
    tempoTotal += duracao;

    await for (var progresso in simularDownload(i, duracao)) {
      print(progresso);
    }
  }

  double velocidadeMedia = 5 / tempoTotal;

  print("Todos os arquivos foram baixados.");
  print("Tempo total: ${tempoTotal}s");
  print("Velocidade média: ${velocidadeMedia.toStringAsFixed(2)} arquivos/segundo");
}

Stream<String> simularDownload(int id, int duracao) async* {
  for (int i = 1; i <= duracao; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Arquivo $id: ${(i / duracao * 100).round()}%";
  }
  yield "Arquivo $id finalizado!";
}