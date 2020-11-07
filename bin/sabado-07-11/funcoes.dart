import 'package:meta/meta.dart';

void main() {
  // função normal sem retorno
  funcaoSemRetorno();

  // função normal com retorno
  final retorno1 = funcaoComRetorno();
  print(retorno1);

  // função normal com passagem de parametro
  final retorno2 = funcaoComParametro('Retorno do parametro');
  print(retorno2);

  // definicao de função no dart
  // TIPO_RETORNO nomeFuncao(TIPO_PARAMETRO nomeParametro) {}

  // funções com parametro opcionais
  criarUmaPessoa('Edson Martins', cpf: '04333613986');
  criarUmCarro('Honda', 'Civic');

  // exercicio
  calcularTabuada(5);
}

void funcaoSemRetorno() {
  print('executando alguma lógica...');
}

String funcaoComRetorno() {
  return 'Retorno da função';
}

String funcaoComParametro(String parametro) {
  return parametro;
}

int parametrosNomeadosOpcionais(int a, {int b = 50, int c = 100}) {
  return a + b + c;
}

int parametrosPosicionaisOpcionais(int a, [int b = 50, int c = 100]) {
  return a + b + c;
}

void criarUmaPessoa(
  String nome, {
  @required String cpf,
  String idade,
  String genero,
}) {
  print('uma pessoa criada..');
}

void criarUmCarro(
  String marca, [
  String nome,
  int portas,
  bool ar,
]) {
  print('um carro criad..');
}

// atividades

void calcularTabuada(int base) {
  print('Tabuado do $base');

  // for (var i = 0; i < 10; i++) {
  //   print('${i + 1} * $base : ${(i + 1) * base}');
  // }

  for (var i = 1; i <= 10; i++) {
    print('$i * $base : ${i * base}');
  }
}
