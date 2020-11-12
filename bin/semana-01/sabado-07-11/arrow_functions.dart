void main() {
  // arrow function como função anonima passando para variavel
  var subtrair = (int n1, int n2) => n1 - n2;
  print('o resultado da subtração é ${subtrair(5, 2)}');

  // exercicio
  var imc = calcularIMC(72, 1.65);
  print('IMC: $imc');
}

// atividades
double calcularIMC(double peso, double altura) => peso / (altura * altura);
