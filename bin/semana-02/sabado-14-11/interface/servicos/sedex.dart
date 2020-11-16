import '../ifrete-servico.dart';

class Sedex implements IFreteServico {
  @override
  double calcularFrete() {
    return 5.26;
  }
}
