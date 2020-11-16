import '../ifrete-servico.dart';

class Dhl implements IFreteServico {
  @override
  double calcularFrete() {
    return 12.26;
  }
}
