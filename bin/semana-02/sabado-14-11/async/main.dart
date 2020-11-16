import 'dart:convert';
import 'dart:io';

class Aluno {
  String nome;
  int idade;

  Aluno(this.nome, this.idade);

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
    };
  }
}

void main() async {
  // print('inicou');
  // // await Future.delayed(Duration(seconds: 2));
  // Future.delayed(Duration(seconds: 2), () => print('testando'));
  // // Future.delayed(Duration(seconds: 2)).then((value) => print('teste'));
  // print('mensagem');
  // print('fim');

  // var aluno = Aluno('Edson', 23);
  // print(jsonEncode(aluno));

  // var file = File('database.json');

  // var aluno = {'Nome': 'Edson', 'idade': 23};

  // await file.writeAsString(jsonEncode(aluno));

  // var conteudo = await file.readAsString();
  var conteudo = await lerArquivo();
  print(conteudo);
}

Future<String> lerArquivo() async {
  var conteudo = await File('database.json').readAsString();
  return conteudo;
}
