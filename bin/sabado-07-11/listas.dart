import 'dart:io';

import 'dart:math';

main() {
  var nomes = <String>['Edson', 'Evandro'];

  var idades = <int>[22, 40];

  // ======== foreach ==========

  // var printar = (int idade) {
  //   print(idade);
  // };

  // idades.forEach((int idade) {
  //   print(idade);
  // });

  // idades.forEach((idade) {
  //   print(idade);
  // });

  // idades.forEach(printar);

  var devs = ['Edson', 'Evandro', 'Marcelo', 'João', 'Fulano'];

  // devs.forEach((dev) {
  //   print(dev);
  // });

  // ====== Add / AddAll ======

  // print('Digite o nome do DEV: ');
  // var dev = stdin.readLineSync();
  var dev = 'Henrique';

  devs.add(dev);
  idades.add(31);

  devs.addAll(['Gesiel', 'Jessica', 'Nicolas', 'Lucas']);

  var devsVindoDoServidor = ['Carol', 'Eduardo Lima'];
  devs.addAll(devsVindoDoServidor);

  // ======== insert / insertAll ======

  devs.insert(0, 'Andrei');

  devs.insertAll(3, ['Carol', 'Luis']);

  // ======== Remove =======

  var removeu = devs.remove('João');

  devs.removeLast();

  devs.removeAt(6);

  devs.removeWhere((String nomeDev) {
    if (nomeDev == 'Edson' || nomeDev == 'Evandro') {
      return true;
    }

    if (nomeDev.toUpperCase().contains('a')) {
      return true;
    }

    return false;
  });

  print(devs.length);

  devs.removeRange(1, 3);

  print(devs.length);

  // ##### atividade #####

  // criar uma lista de notas (double)
  // fazer um for até 10
  // a cada iteração adicionar a nota na lista (entrada do usuário)
  // remover todas as notas que forem abaixo de 5 (removeWhere)
  // mostrar a nota

  // var atividadeNotas = <double>[];
  // for (var i = 0; i < 10; i++) {
  //   stdout.write('Nota ${i + 1}: ');
  //   atividadeNotas.add(double.tryParse(stdin.readLineSync()));
  // }

  // atividadeNotas.removeWhere((nota) => nota < 5);
  // print(atividadeNotas);

  // ========== map ==========

  // var idadesEmDobro = idades.map((idade) {
  //   return idade * 2;
  // });
  // print(idadesEmDobro);

  // var qtdLetras = devs.map((dev) => dev.length);
  // print(qtdLetras);

  // ======== where ==========

  // var notas = <double>[2.5, 5, 7.8, 6.4, 3.5];

  // var notasMaiorQue5 = notas.where((nota) => nota >= 5).toList();

  // var primeiraNotaMaiorQue5 =
  //     notas.firstWhere((nota) => nota > 9, orElse: () => null);

  // var nota = notas.lastWhere((nota) => nota > 5);

  // print(notas);
  // print(notasMaiorQue5);
  // print(primeiraNotaMaiorQue5);
  // print(nota);

  // ======= sort =======

  // 0 , 1
  // 1, 2

  // -1 = altera da esquerda pra direita
  // 0 = não mexe em nada
  // 1 =  altera da direita pra esquerda

  // print(notas);

  // do menor para o maior
  /*  notas.sort((nota1, nota2) {
    return nota1.compareTo(nota2);
  }); */

  // do maior para o menor
  /* notas.sort((nota1, nota2) {
    return nota2.compareTo(nota1);
  }); */

  // notas.sort((nota1, nota2) {
  //   if (nota1 < nota2) {
  //     return 1;
  //   }

  //   return -1;
  // });

  // print(devs);
  // devs.sort((nome1, nome2) {
  //   return nome2.compareTo(nome1);
  // });
  // print(devs);

  // ==== reduce / fold =====

  // var notas = <double>[2.5, 5, 7.8, 6.4, 3.5, 8.9, 10, 6.7];

  // var devs4 = ['Edson', 'Evandro'];
  // redude = EdsonEvandro

  // 2.5 + 5 = 7.5
  // 7.5 + 7.8 = 15.3

  // var nota = notas.reduce((valorRetornado, nota) {
  //   print('Valor retornad: $valorRetornado    |   nota: $nota');
  //   return valorRetornado + nota;
  // });

  // var nota = notas.fold(0, (valorRetornado, nota) {
  //   print('Valor retornad: $valorRetornado    |   nota: $nota');
  //   return valorRetornado + nota;
  // });

  // var somaDasNotasMaioresQue5 = notas
  //     .where((nota) => nota > 5)
  //     .map((nota) => nota * 10)
  //     .reduce((total, nota) => total + nota);

  // print(notas);

  // ## atividade ##
  // criar uma lista de notas (double)
  // fazer um for até 10
  // a cada iteração adicionar a nota na lista (entrada do usuário)
  // descubra a média das notas
  // printar no terminal as notas que forem maior do que 7
  // printar no terminal a média das turmas
  // mostrar a a pior nota e a melhor nota (use o sorte)

  // var atividadeNotas = <double>[];
  // for (var i = 0; i < 10; i++) {
  //   stdout.write('Nota ${i + 1}: ');
  //   atividadeNotas.add(double.tryParse(stdin.readLineSync()));
  // }

  // var media = atividadeNotas.fold<double>(0, (total, nota) => total + nota) /
  //     atividadeNotas.length;
  // print(atividadeNotas.where((nota) => nota > 7).toList());
  // print(media);

  // atividadeNotas.sort((nota1, nota2) => nota1.compareTo(nota2));
  // print('Menor nota: ${atividadeNotas.first}');
  // print('Melhor nota: ${atividadeNotas.last}');
}
