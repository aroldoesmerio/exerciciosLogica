/*
Desenvolva uma lógica que leia o peso e a altura de uma pessoa. 
calcule seu IMC
Mostre seu status de acordo com a tabela abaixo: 

Abaixo de 18.5: Abaixo do peso 
Entre 18.5 e 24 : Peso ideal 
25 até 30 : SobrePeso 
30 até 40 : Obesidade 
Acima de 40 : Obesidade Mórbida

*/

import 'dart:io';

void main() {
  print('Olá, vamos calcular seu IMC ... ');

  print(' ############');

  print('Digite sua peso');

  double peso = double.parse(stdin.readLineSync() ?? '');
  print('Digite sua altura');
  double altura = double.parse(stdin.readLineSync() ?? '');

  double imc = peso / (altura * altura);

  print('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc <= 25) {
    print('Peso ideal');
  } else if (imc >= 25 && imc <= 30) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc <= 40) {
    print('Obesidade');
  } else {
    print('Obesidade Mórbida');
  }
}
