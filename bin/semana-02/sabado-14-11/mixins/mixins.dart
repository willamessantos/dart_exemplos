mixin Validacoes {
  bool teste = true;
  bool validarCpf() {
    return false;
  }

  String removerAcentos(String valor) {}

  static bool validarEmail(String email) {
    return true;
  }
}

class EnviarEmail {
  enviarEmail(String email) {}
}

class NotaController with EnviarEmail, Validacoes {
  montarNota(String nome) {
    var nomeSemACento = removerAcentos(nome);

    // salva no banco

    enviarEmail('email');
  }
}

class LoginController with EnviarEmail, Validacoes {
  void fazerLogin(String email) {
    if (!Validacoes.validarEmail(email)) {
      throw 'Email inválido';
    }
  }
}
