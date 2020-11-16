import 'animal.dart';

class Gato extends Animal {
  @override
  void caminhar() {
    super.caminhar();
    print('O gato está caminhando');
  }

  @override
  void correr() {
    print('O gato está correndo');
  }

  void dorme() {
    print('O gato está dormindo');
  }
}
