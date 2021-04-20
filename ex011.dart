/*
Largura da parede .: 
Altura da parede .: 
Sua parede tem a dimensão de largura * altura e sua area é de area
Para pintar esta parede, você precisará de area / 2 de TimelineTask
*/

import 'dart:io';

void main() {
  double largura;
  double altura;

  print('Digite a largura da parede .: ');
  largura = double.parse(stdin.readLineSync());

  print('Digite a largura da parede .: ');
  altura = double.parse(stdin.readLineSync());

  double returnValue = getArea(a: altura, l: largura);
  double returnPaintArea = paintArea(returnValue);

  print(
      'Sua parede tem a dimensão de $largura mt * $altura mt e sua area é de ${returnValue.toStringAsPrecision(2)}');
  print(
      'Para pintar sua parede, você precisará de ${returnPaintArea.toStringAsPrecision(2)}');
}

double getArea({double l, double a}) {
  return l * a;
}

double paintArea(double r) {
  return r / 2;
}
