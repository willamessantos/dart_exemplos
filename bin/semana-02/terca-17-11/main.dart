import 'dart:convert';

import 'aluno.dart';
import 'turma.dart';

void main(List<String> args) {
  var alunos = <Aluno>[
    Aluno(nome: 'Edson', idade: 23, nota: 8, status: 'Aprovado'),
    Aluno(nome: 'Carlos', idade: 23, nota: 8, status: 'Aprovado'),
  ];

  // var alunosMap = alunos.map((aluno) {
  //   return <String, dynamic>{
  //     'name': aluno.nome,
  //     'idade': aluno.idade,
  //     'nota': aluno.nota,
  //     'status': aluno.status,
  //   };
  // }).toList();

  var alunosMap = alunos.map((aluno) {
    return aluno.toJson();
  }).toList();

  var dadoJson = {
    'turma_id': 123,
    'alunos': alunosMap,
  };

  // print(alunoMap);

  var json = jsonEncode(dadoJson);

  print(json);

  dynamic mapApi = jsonDecode(json);

  var alunosApi = <Aluno>[];

  // for (var alunoMap in mapApi) {
  //   alunosApi.add(
  //     Aluno(
  //       nome: alunoMap['name'],
  //       idade: (alunoMap['idade'] as int),
  //       nota: (alunoMap['nota'] as double),
  //       status: alunoMap['status'],
  //     ),
  //   );
  // }

  // var alunosApi2 = (mapApi['alunos'] as List)
  //     .map(
  //       (alunoMap) => Aluno(
  //           nome: alunoMap['name'],
  //           idade: (alunoMap['idade'] as int),
  //           nota: (alunoMap['nota'] as double),
  //           status: alunoMap['status']),
  //     )
  //     .toList();

  var alunosApi2 = (mapApi['alunos'] as List)
      .map((alunoMap) => Aluno.fromJson(alunoMap))
      .toList();

  var turma = Turma(
    mapApi['turma_id'],
    alunosApi2,
  );

  print(turma.id);
  print(turma.alunos);
}
