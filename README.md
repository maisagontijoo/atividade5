# Atividade Prática - Funções Assíncronas, Future e Stream em Dart

## Parte 1: Pesquisa Teórica

## Funções Assíncronas
### 1. O que são funções assíncronas?
São funções que permitem que o programa continue rodando enquanto esperam o resultado de uma operação demorada, como uma leitura de arquivo ou requisição web.
### 2. Quando devemos usar async e await?
Usamos `async` quando criamos uma função assíncrona, e `await` quando queremos esperar pelo resultado de uma operação, como um Future.
### 3. Qual a diferença entre código síncrono e assíncrono?
- `Síncrono`: executa linha por linha, esperando cada tarefa acabar.
- `Assíncrono`: permite que o programa siga rodando enquanto espera por tarefas demoradas.

## Future
### 1. O que é um Future?
Um Future representa um valor que estará disponível no futuro.
### 2. Exemplos de uso:
- Esperar um tempo: `Future.delayed(Duration(seconds: 2), () => "Carregado");`
- Leitura de arquivos.
### 3. Três estados de um Future:
- Incompleto
- Concluído com sucesso
- Concluído com erro
### 4. Para que servem then, catchError e whenComplete?
- `then`: executa quando o Future termina com sucesso.
- `catchError`: executa se ocorrer erro.
- `whenComplete`: executa sempre no final, com ou sem erro.

## Stream
### Diferença entre Future e Stream:
- `Future` retorna um valor no futuro.
- `Stream` retorna vários valores ao longo do tempo.
### 3 formas de consumir uma Stream:
- `.listen()`
- `await for`
- `.toList()`: coleta tudo em uma lista.
### Transformações:
- `map`: transforma os valores.
- `where`: filtra.
- `take`: limita a quantidade.


## Parte 2 e 3: Atividade Prática e Desafio

Para executar o arquivo contendo as atividades siga os seguintes passos:
- Certifique-se de ter Dart instalado.
- Clone o repositório e abra-o no VSCode.
- Abra um novo terminal.
- Execute os seguinte comando no terminal:
  - Para executar o exercício 1: `dart run bin/trabalhandoComFutures.dart`
  - Para executar o exercício 2: `dart run bin/trabalhandoComStreams.dart`
  - Para executar o exercício 3: `dart run bin/monitorarTarefas.dart`
  - Para executar o desafio: `dart run bin/sistemaDownload.dart`

 
## Parte 4: Relatório Final

### 1. Quais foram as principais dificuldades encontradas?
Entender como lidar com erros em Stream e usar await for.

### 2. Como você resolveu essas dificuldades?
Testei exemplos pequenos, verificando se estava tudo funcionando corretamente, vi a ordem de execução e usei try-catch.

### 3. Qual a principal diferença prática entre usar then/catchError e async/await?
- `then`/`catchError` usa callbacks e pode ser útil para casos mais simples.
- `async`/`await` é mais organizado e fácil de ler, parece com o código normal.

### 4. Em que situações do mundo real você usaria Streams?
Em downloads, sensores, eventos de usuário, chats, upload de arquivos, etc.

### 5. O que você aprendeu de mais importante nesta atividade?
Aprendi a usar Future, Stream, e a lidar com tarefas assíncronas no Dart de forma mais controlada.
