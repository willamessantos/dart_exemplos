import 'frete.dart';
import 'servicos/dhl.dart';
import 'servicos/fedex.dart';
import 'servicos/sedex.dart';
import 'servicos/tnt.dart';

void main() {
  var frete = Frete();

  print(frete.calcularFrete(Sedex()));
  print(frete.calcularFrete(Fedex()));
  print(frete.calcularFrete(Tnt()));
  print(frete.calcularFrete(Dhl()));
}
