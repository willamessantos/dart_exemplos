import '../ifrete-servico.dart';

class Fedex implements IFreteServico {
  @override
  double calcularFrete() {
    return 30.26;
  }
}
