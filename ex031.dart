/*
Desenvolva um programa que pergunte a distância de uma viagem em km.
Calcule o preço da passagem, cobrando R$0,50 por KM para viagens de até 
200KM e R$0,45 para viagens mais longas. 
*/

import 'dart:io';

void main() {
  print('Digite a KM da viagem ...');
  double distance = double.parse(stdin.readLineSync());
  String info200km =
      'Seus KMs permaneceram em até 200KM, portanto o custo de sua viagem é de ...';
  String infoMais200Km =
      'Você ultrapassou os 200KM, portante seu custo de viagem é de ...';

  String custoViagem = distance <= 200
      ? '${info200km}R\$${distance * 0.50}'
      : '${infoMais200Km}R\$${distance * 0.45}';

  print(custoViagem);
}
