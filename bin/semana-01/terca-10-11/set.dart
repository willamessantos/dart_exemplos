void main() {
  // é um conjunto de valor, não indexado
  // não aceita valores repetidos

  var frutas = <String>{
    'Melancia',
    'Melão',
    'Laranja',
  };

  var frutas2 = <String>{
    'Uva',
    'Mamão',
    'Melancia',
    'Laranja',
    'Bergamota',
  };

  // diference

  // var novasFrutas = frutas.difference(frutas2);

  // union
  // var novasFrutas = frutas.union(frutas2);

  // intersection
  var novasFrutas = frutas.intersection(frutas2);

  print(novasFrutas);
}
