import 'extension-methods.dart';

void main() {
  // extension methods

  // metodos de extensao

  var cpf = '2223334445556';

  // print(cpf.padRight(11, '0'));

  var cpfFormatado = cpf.cpfCnpj();

  print(cpfFormatado);

  print(false.toInt());

  // Criar um contrato de serviço de e-mail que possui o método enviar e-mail.
  // Criar 3 classes de envio de e-mail
  // que implementam esse contrato de serviço de e-mail (Gmail, Hotmail, Uol...).
  // Criar uma classe Usuário e criar um método chamado notificar usuário que recebe o contrato de serviço de e-mail.
  // No main, criar um objeto do tipo usuário e chamar o método de notificar usuário passando a implementação de um serviço de e-mail.

  // criar uma interface chamada EmailServico que possui uma assinatura chamda enviarEmail(String email)
  // criar 3 serviços de email (Gmail, Hotmail, Uol) que implementam essa interface do EmailServico
  // nas implementações do método façam somente um print print('Enviando email apartir do (Gmail,Hotmail, Uol))
  // criar uma classe Usuario que possui o método notificarUsuario e um atributo chamado Email
  // neste metodo receber um parametro do tipo EmailServico
  // chamar a assinatura do metodo EmailServico
}
