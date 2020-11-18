import 'dart:convert';
import 'dart:io';

import 'aluno.dart';
import 'turma.dart';

void main() async {
  // var alunos = <Aluno>[
  //   Aluno(nome: 'Edson', idade: 23, nota: 8, status: 'Aprovado'),
  //   Aluno(nome: 'Carlos', idade: 23, nota: 8, status: 'Aprovado'),
  // ];

  // var turma = Turma(1, alunos);

  // // monta os dados que serão salvos no arquivo
  // var dados = <String, dynamic>{
  //   'turma_id': turma.id,
  //   'alunos': alunos.map((aluno) => aluno.toJson()).toList(),
  // };

  // // cria uma instancia do arquivo
  // var database = File('database.json');

  // // escreve no arquivo convertando os nossos dados para um json
  // await database.writeAsString(jsonEncode(dados));

  // // lê o que ta no arquivo e joga pra variavel conteudo
  // var conteudo = await database.readAsString();

  // print(conteudo);

  carregarArquivo();
}

Future<bool> carregarArquivo() async {
  var file = File('database.json');

  if (!(await file.exists())) {
    return false;
  }

  var conteudo = await file.readAsString();

  var turmaMap = jsonDecode(conteudo);

  var alunosApi2 = (turmaMap['alunos'] as List)
      .map((alunoMap) => Aluno.fromJson(alunoMap))
      .toList();

  var turma = Turma(
    turmaMap['turma_id'],
    alunosApi2,
  );

  return true;
}
