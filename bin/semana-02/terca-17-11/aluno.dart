class Aluno {
  String nome;
  int idade;
  double nota;
  String status;

  Aluno({this.nome, this.idade, this.nota, this.status});

  Aluno.fromJson(dynamic map) {
    nome = map['name'];
    idade = (map['idade'] as int);
    nota = (map['nota'] as double);
    status = map['status'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': nome,
      'idade': idade,
      'nota': nota,
      'status': status,
    };
  }

  @override
  String toString() {
    return 'Nome: $nome ... Idade: $idade ... Nota:$nota ... Status: $status';
  }
}
