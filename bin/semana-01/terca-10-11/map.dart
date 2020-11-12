void main() {
  // map
  // um conjunto não indexado, ou seja, não é possível acessar por um index
  // consiste em ser um conjunto de chave e valor
  // não aceita valores repetidos

  var aluno = <String, dynamic>{
    'nome': 'Edson',
    'idade': 23,
  };

  Map<int, dynamic> aluno2 = {
    1: '',
    2: 20.0,
    3: true,
  };

  var aluno3 = Map<dynamic, dynamic>();

  aluno['status'] = 'Não mapeado';

  // print(aluno);

  // ========= FOREARCH =========

  aluno.forEach((key, value) {
    print('$key $value');
  });

  print(aluno.keys);
  print(aluno.values);

  aluno.keys.forEach((element) {});

  for (var key in aluno.keys) {}

  // ========= addAll | addEntries =========

  // aluno.addAll({
  //   'notas': [
  //     2,
  //     5,
  //     8,
  //   ],
  //   'id': 'UID',
  // });

  aluno.addEntries([
    MapEntry('notas', [2, 6, 7]),
    MapEntry('id', 'UID'),
  ]);

  // print(aluno);

  // ========= map =========

  var outroAluno = aluno.map((key, value) {
    if (value.runtimeType == String) {
      return MapEntry(key, value.toString().length);
    }

    return MapEntry(key, value);
  });

  print(aluno);
  print(outroAluno);

  // ========= containsKey | containsValue =========

  print('aluno tem a key nome ? ${aluno.containsKey('nome')}');
  print('aluno tem a key sobrenome ? ${aluno.containsKey('sobrenome')}');

  print('aluno tem a value Edson ? ${aluno.containsValue('Edson')}');
  print('aluno tem a value Martins ? ${aluno.containsValue('Martins')}');

  // ========= putIfAbsent =========

  aluno.putIfAbsent('nome', () => 'Lucas');
  aluno.putIfAbsent('sobrenome', () => 'Martins');

  print(aluno);

  // ========= remove | removeWhere =========

  // aluno.remove('sobrenome');
  // aluno.remove('cpf');

  // print(aluno);

  // aluno.removeWhere((key, value) => key == 'nome' && value == 'Lucas');
  // print(aluno);

  // ========= update | updateAll =========

  aluno.update('nome', (value) => 'Lucas');
  aluno.update('cpf', (value) => '11122233344', ifAbsent: () => '99988877755');

  print(aluno);

  aluno.updateAll((key, value) {
    if (key == 'nome') return 'Edson';

    return value;
  });
  print(aluno);

  // ====== ATIVIDADES ======

  // Criar ma lista de alunos com as keys Nome, Idade, Situacao, Nota
  // A partir da lista de alunos criar uma lista somente com as notas dos alunos
  // A partir da lista de alunos criar uma lista de alunos aprovados (nota maior que 5)
  // Por fim remover a key Idade de todos os alunos

  var alunos = [
    {
      'Nome': 'Edson',
      'Idade': 22,
      'Situacao': 'Aprovado',
      'Nota': 5,
    },
    {
      'Nome': 'Evandro',
      'Idade': 28,
      'Situacao': 'Aprovado',
      'Nota': 8,
    },
    {
      'Nome': 'Marcelo',
      'Idade': 30,
      'Situacao': 'Reprovado',
      'Nota': 0,
    },
  ];

  print(alunos);
  var notas = alunos.map((aluno) => (aluno['Nota'] as int)).toList();
  var aprovados = alunos.where((aluno) => (aluno['Nota'] as int) > 5).toList();

  alunos.forEach((aluno) => aluno.remove('Idade'));

  print(notas);
  print(aprovados);
  print(alunos);
}
