import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';

void main() {
  var dog = Cachorro();
  var gato = Gato();

  // nao pode fazer pois a classe animal é abstract
  // var animal = Animal();

  // fazerODogCorrer(dog);
  // fazerOGatoCorrer(gato);

  fazerOAnimalCorrer(dog);
  fazerOAnimalCorrer(gato);
}

void fazerOGatoCorrer(Gato gato) {
  gato.correr();
}

void fazerODogCorrer(Cachorro dog) {
  dog.correr();
}

void fazerOAnimalCorrer(Animal animal) {
  animal.comer();
}
