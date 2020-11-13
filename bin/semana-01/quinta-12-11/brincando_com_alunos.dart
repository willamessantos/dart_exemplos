import 'dart:math';

void main(List<String> arguments) {
  // alunos
  var alunos = <Map<String, dynamic>>[
    {'Nome': 'Aluno 1', 'Idade': '17', 'Nota': 0, 'Status': 'Não definido'},
    {'Nome': 'Aluno 2', 'Idade': '16', 'Nota': 0, 'Status': 'Não definido'},
    {'Nome': 'Aluno 3', 'Idade': '18', 'Nota': 0, 'Status': 'Não definido'},
    {'Nome': 'Aluno 4', 'Idade': '21', 'Nota': 0, 'Status': 'Não definido'},
    {'Nome': 'Aluno 5', 'Idade': '17', 'Nota': 0, 'Status': 'Não definido'}
  ];

  var gabarito = ['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];

  // A = 65  |  B = 66  |  C = 67
  var respostasPermitidasAscii = [65, 66, 67];

  for (var aluno in alunos) {
    var nota = 0;

    // calcula a nota
    for (var i = 0; i < gabarito.length; i++) {
      // pega um código da tabela ascii com o random
      var resposta = respostasPermitidasAscii[
          Random.secure().nextInt(respostasPermitidasAscii.length)];

      // converte o código da tabela ascii pra um caractere do nosso alfabeto e faz a comparação
      // com o gabarito
      if (gabarito[i] == String.fromCharCode(resposta)) {
        nota++;
      }
    }

    aluno['Nota'] = nota;
    aluno['Status'] = nota > 4 ? 'Aprovado' : 'Reprovado';
  }

  // calcula a media dos alunos
  var media = alunos
          .map((aluno) => (aluno['Nota'] as int))
          .reduce((soma, nota) => soma + nota) /
      alunos.length;

  // ordena os alunos pelas nota da menor para maior
  alunos.sort((aluno1, aluno2) =>
      (aluno1['Nota'] as int).compareTo((aluno2['Nota'] as int)));

  var piorAluno = alunos.first;
  var melhorAluno = alunos.last;

  var aprovados =
      alunos.where((aluno) => aluno['Status'].toString() == 'Aprovado');

  var reprovados =
      alunos.where((aluno) => aluno['Status'].toString() == 'Reprovado');

  print('Media: $media');
  print('Pior aluno: $piorAluno');
  print('Melhor aluno: $melhorAluno');
  print('Aprovados: $aprovados');
  print('Aprovados: $reprovados');
}
