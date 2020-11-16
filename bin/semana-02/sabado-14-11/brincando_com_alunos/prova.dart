import 'aluno.dart';

class Prova {
  List<String> _gabarito = ['A', 'C', 'B', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];
  List<String> _respostasPermitidas = ['A', 'B', 'C'];

  int aplicarProva(Aluno aluno) {
    var respostaAluno =
        aluno.marcarRespostas(_gabarito.length, _respostasPermitidas);

    var nota = _corrigirProva(respostaAluno);

    return nota;
  }

  int _corrigirProva(List<String> respostas) {
    var total = 0;
    for (var i = 0; i < _gabarito.length; i++) {
      if (respostas[i] == _gabarito[i]) {
        total++;
      }
    }

    return total;
  }
}
