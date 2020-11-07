import 'dart:math';
import 'dart:io';

main() {
  // variaveis
  String nome = 'Édson';
  int idade = 22;
  double altura = 1.68;
  bool mentor = true;

  dynamic qualquer = '123';
  qualquer = true;

  var sobrenome = 'Martins';

  final pi = 3.1416;

  // operadores e concatenação

  /*
    concatenação de string
    operadores aritmeticos
  */

  var nomeCompleto = '$nome $sobrenome, $idade, é mentor: $mentor';

  var nomeCompleto2 = '''
    $nome,
    $sobrenome,
    $idade
  ''';

  var nomeCompleto3 = '$nome ' '$sobrenome';

  // operadores

  var soma = 25 + 15;
  print('soma $soma');

  var multiplicacao = 25 * 15;
  print('multiplicacao $multiplicacao');

  var divisao = 25 / 15;
  print('divisao $divisao');

  var divisaoInteiro = 25 ~/ 2;
  print('divisao so parte inteira $divisaoInteiro');

  var substracao = 25 - 15;
  print('substracao $substracao');

  var restoDivisao = 25 % 2;
  print('restoDivisao $restoDivisao');

  var operao = 5 * (5 + 4);
  print('operacao $operao');

  // imports (math)

  var raizQuadra = sqrt(81);
  var aoQuadrado = pow(10, 2);
  print('raiz quadrada $raizQuadra');
  print('ao quadrado $aoQuadrado');

  // imports (io)
  stdout.write('Digite uma palavra: ');

  var entrada = stdin.readLineSync();
  print('entrada do usuário: $entrada');

  // converter string para número
  //var convertido = int.tryParse('10');
  var convertido = double.tryParse('10');

  if (convertido == null) {
    print('não converteu');
  } else {
    print('converteu para $convertido');
  }

  // exercicio

  // calcular imc

  var pesoImc = 86; // da para pegar do usuario pelo terminal
  var alturaImc = 1.79; // da para pegar do usuario pelo terminal

  var imc = pesoImc / (alturaImc * alturaImc);
  var imc2 = pesoImc / pow(alturaImc, 2);

  print('imc: $imc');
  print('imc2: $imc2');
}
