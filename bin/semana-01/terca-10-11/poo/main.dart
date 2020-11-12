import 'pessoa.dart';

void main() {
  var p1 = Pessoa('Edson', 23, '11122244455');

  // print(p1);
  print(p1.nome);
  print(p1.idade);

  // p1.andar();
  // print(p1.fazerAniversario());

  var p2 = Pessoa.vazio();

  print(p2.nome);

  var p3 = Pessoa.opcional(idade: 23, cpf: '55566644477');

  print(p3.cpf);
  p3.cpf = '123';
}
