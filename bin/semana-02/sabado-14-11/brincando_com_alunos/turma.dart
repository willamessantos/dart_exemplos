import 'aluno.dart';
import 'prova.dart';

class Turma {
  List<Aluno> _alunos;

  List<Aluno> get alunos => List.unmodifiable(_alunos);

  List<Aluno> get alunosOrdenados {
    var alunosOrdenados = _alunos;

    alunosOrdenados.sort((a1, a2) => a1.nota.compareTo(a2.nota));
    return alunosOrdenados;
  }

  Aluno get piorAluno => alunosOrdenados.first;

  Aluno get melhorAluno => alunosOrdenados.last;

  Turma() {
    _alunos = [];
  }

  void matricularAluno(Aluno novoAluno) {
    // não pode adicionar alunos replicados
    // var alunoJaCadastro = _alunos.firstWhere((aluno) {
    //       var eIgual = aluno.pessoa.nome.toUpperCase() ==
    //           novoAluno.pessoa.nome.toUpperCase();

    //       return eIgual;
    //     }, orElse: () => null) !=
    //     null;

    if (_alunos.any((aluno) =>
        aluno.pessoa.nome.toUpperCase() ==
        novoAluno.pessoa.nome.toUpperCase())) {
      throw 'Aluno já cadastrado';
    }

    _alunos.add(novoAluno);
  }

  void aplicarProva(Prova prova) {
    for (var aluno in alunos) {
      var nota = prova.aplicarProva(aluno);
      aluno.atualizarNotaEStatus(nota);
    }
  }

  int retornarMediaDaTurma() {
    return _alunos
            .map((aluno) => aluno.nota)
            .reduce((soma, nota) => soma + nota) ~/
        _alunos.length;
  }

  Aluno retornarPiorAluno() {
    return _alunos.reduce((piorAluno, aluno) {
      if (aluno.nota < piorAluno.nota) return aluno;

      return piorAluno;
    });
  }

  Aluno retornarMelhorAluno() {
    return _alunos.reduce((melhorAluno, aluno) {
      if (aluno.nota > melhorAluno.nota) return aluno;

      return melhorAluno;
    });
  }

  List<Aluno> retornarAlunosAprovados() =>
      _alunos.where((aluno) => aluno.status == EStatus.APROVADO).toList();

  List<Aluno> retornarAlunosReprovados() =>
      _alunos.where((aluno) => aluno.status == EStatus.REPROVADO).toList();
}
