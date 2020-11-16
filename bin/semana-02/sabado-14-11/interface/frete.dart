import 'ifrete-servico.dart';

class Frete {
  // double calcularFrete(String servico) {
  //   // corerrio,dhl, fedex, tnc

  //   // if(servico.toUpperCase() == 'SEDEX'){

  //   // } else if(servico.toUpperCase() == 'DHL'){

  //   // }

  //   switch (servico.toUpperCase()) {
  //     case 'SEDEX':
  //       // requisicao de api
  //       //
  //       //
  //       //
  //       //
  //       //
  //       //
  //       //

  //       return 25.23;
  //       break;
  //     case 'DHL':
  //       return 30.23;
  //       break;
  //     case 'TNT':
  //       return 18.23;
  //       break;
  //     case 'FEDEX':
  //       return 14.23;
  //       break;
  //     default:
  //       throw 'Servico não reconhecido';
  //   }
  // }

  double calcularFrete(IFreteServico servico) {
    return servico.calcularFrete();
  }
}
