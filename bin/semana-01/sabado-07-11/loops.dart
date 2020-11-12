import 'dart:io';

void main() {
  // while
  var numeroWhile = 1;
  while (true) {
    print('laço com while');
    if (numeroWhile > 10) {
      break;
    }

    numeroWhile++;
  }

  // do while
  var numeroDoWhile = 1;
  do {
    print('laço com do while');

    if (numeroDoWhile > 10) {
      break;
    }

    numeroDoWhile++;
  } while (true);

  // for
  for (var i = 0; i < 100; i++) {
    print(i);
  }

  // atividades
  // calcularMedia();
  multiplosDe3E5();
}

void calcularMedia() {
  /// ler 3 numeros maiores que 10 e devolver a media
  var numeroAtual = 1;
  var total = 0;
  while (numeroAtual <= 3) {
    stdout.write(
        'digite o numero $numeroAtual maior que 10 (ou c para cancelar):');
    var entrada = stdin.readLineSync();

    var numero = int.tryParse(entrada);

    if (numero == null) {
      stdout.writeln('opppsss !! valor inválido!!');
      continue;
    }

    if (numero > 10) {
      total += numero;
      numeroAtual++;
    }
  }

  stdout.writeln('A média é: ${total ~/ 3}');
}

void multiplosDe3E5() {
  for (var i = 0; i < 100; i++) {
    if (((i % 3) == 0) && ((i % 5) == 0)) {
      print('O número $i é múltiplo de 3 e 5');
    }
  }
}
