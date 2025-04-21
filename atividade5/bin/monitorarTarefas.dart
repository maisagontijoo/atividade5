import 'dart:async';

void main(List<String> arguments) async {
  int tempoTotal = 0;

  for (int i = 1; i <= 5; i++) {
    int duracao = i + 1;
    tempoTotal += duracao;

    await for (var progresso in tarefa(i, duracao)) {
      print(progresso);
    }
  }

  print("Tempo total: ${tempoTotal}s");
}

Stream<String> tarefa(int id, int segundos) async* {
  for (int i = 1; i <= segundos; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Tarefa $id: ${(i / segundos * 100).round()}%";
  }
  yield "Tarefa $id concluída!";
}