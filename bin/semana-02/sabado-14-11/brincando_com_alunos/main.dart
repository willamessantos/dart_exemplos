import 'aluno.dart';
import 'pessoa.dart';
import 'prova.dart';
import 'turma.dart';

void main() {
  var turma = Turma();
  var prova = Prova();

  for (var i = 0; i < 10; i++) {
    turma.matricularAluno(Aluno(Pessoa('Aluno ${i + 1}', (20 + i))));
  }

  turma.aplicarProva(prova);

  print('Media da turma: ${turma.retornarMediaDaTurma()}\n');

  print('Pior Aluno: ${turma.retornarPiorAluno()}');
  print('Pior Aluno 2: ${turma.piorAluno}\n');

  print('Melhor Aluno: ${turma.retornarMelhorAluno()}');
  print('Melhor Aluno 2: ${turma.melhorAluno}\n');

  print(' ==== Alunos aprovados ====');
  print(turma.retornarAlunosAprovados());

  print('\n\n');

  print(' ==== Alunos reprovados ====');
  print(turma.retornarAlunosReprovados());

  print('\n\n');
}
