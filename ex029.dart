/*
Escreva um programa que leia a velocidade de um carro
Se ele ultrapassar 80km/h, mostre uma mensagem
dizendo que ele foi multado.
A multa vai custar R$7,00 por cada KM acima do limite. 
*/

import 'dart:io';

void main() {
  print('Insira a velocidade do veículo');
  int velocidade = int.parse(stdin.readLineSync());

  if (velocidade <= 80) {
    print('Sem multas');
  } else {
    int multa = (velocidade - 80) * 7;
    print('Multa de R\$${multa.toStringAsPrecision(4)}');
  }
}
