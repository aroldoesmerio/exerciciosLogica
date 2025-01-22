/*
Informe a temperatura em C .: 

A temperatura de $temperatura C corresponde a $returnValue F 

1 °C × 9/5) + 32
*/

import 'dart:io';

void main() {
  print('Informe a temperatura em C .: ');
  double temperatura = double.parse(stdin.readLineSync() ?? '');

  Temperatura minhaTemperatura = Temperatura(temperatura: temperatura);

  print(
      'A temperatura de $temperatura\C corresponde a ${minhaTemperatura.conversor()}\F ');
}

class Temperatura {
  double temperatura;
  Temperatura({
    required this.temperatura,
  });

  double conversor() => ((this.temperatura * 9 / 5) + 32);
}
