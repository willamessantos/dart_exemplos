class Pessoa {
  // atributos (descricao do nosso objeto)

  // TIPO_DO_ATRIBUTO nome_do_atributo

  String nome;
  double idade;

  bool eMentor = false;

  // public
  // private
  // protected

  String _cpf;

  String get cpf => _cpf;

  set cpf(String cpf) {
    if (cpf.length < 3) throw 'CPF invalido';

    _cpf = cpf;
  }

  // construtores

  // Pessoa(String nome, double idade) {
  //   this.nome = nome;
  //   this.idade = idade;
  // }

  // Pessoa(this.nome, this.idade);

  Pessoa(this.nome, this.idade, this._cpf);

  // construtores nomeados

  Pessoa.vazio();
  // Pessoa.opcional({this.nome, this.idade, String cpf}) {
  //   this._cpf = cpf;
  // }
  Pessoa.opcional({this.nome, this.idade, String cpf}) : this._cpf = cpf;

  // metodos (comportamentos do nosso objeto)

  void andar() {
    var palavra = 'Está andando...';
    print('O(a) $nome está andando...');
  }

  DateTime fazerAniversario() {
    DateTime dataNascimento;

    var requisicao = DateTime.now();
    // var requisicao = '2009/02/21';

    if (requisicao != null) {
      dataNascimento = requisicao;
    }

    return dataNascimento;
  }
}
