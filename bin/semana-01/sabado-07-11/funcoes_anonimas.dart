void main() {
  // função anonima passando para uma variavel
  Function somar = (int n1, int n2) {
    return n1 + n2;
  };
  print('o resultado da soma é ${somar(4, 4)}');

  // função anonima passando por parametro
  funcaoAnonima((String param) {
    print(param);
  });

  // exercicio

  // exercicio para ver se numero é primo ou não, passando duas funções por parametro para cada ação
  // verificaNumero(16, () => print('O número é par'), () => print('O Número é impar'));
  verificaNumero(16, (int numero) {
    print('O número $numero é par');
  }, (int numero) {
    print('O Número $numero é impar');
  });
}

void funcaoAnonima(void Function(String) acao) {
  acao('Chamando uma função anonima');
}

void verificaNumero(
    int base, void Function(int) isPar, void Function(int) isImpar) {
  if (base % 2 == 0) {
    isPar(base);
  } else {
    isImpar(base);
  }
}

// atividades

void ehPrimoComParametro(
  int numero, {
  void Function() fnEPrimo,
  void Function() fnNaoEPrimo,
}) {
  if (numero == 1 || (numero % 2) == 0) {
    fnNaoEPrimo();
    return;
  }

  if (numero == 2) {
    fnEPrimo();
    return;
  }

  bool ePrimo = true;
  for (var i = 3; i < (numero ~/ 2); i++) {
    if ((numero % i) == 0) {
      ePrimo = false;
      break;
    }
  }

  ePrimo ? fnEPrimo() : fnNaoEPrimo();
}
