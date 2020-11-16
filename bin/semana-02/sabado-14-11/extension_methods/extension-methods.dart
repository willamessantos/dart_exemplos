extension StringExtension on String {
  String formatarCPF() {
    var cpf = padLeft(11, '0');

    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9, 11)}';
  }

  String cpfCnpj() {
    if (length <= 11) {
      var cpf = padLeft(11, '0');
      return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9, 11)}';
    } else {
      var cnpj = padLeft(14, '0');
      // 00.000.000/0001-25
      return '${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}';
    }
  }
}

extension IntExtension on int {
  bool toBoolean() {
    return this == 1;
  }
}

extension BoolExtension on bool {
  int toInt() {
    return this ? 1 : 0;
  }
}
