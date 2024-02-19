/*
Escreva um programa que leia dois números inteiros e compare-os
mostrando na tela uma mensagem: 
- O primeiro valor é maior 
- O Segundo valor é menor 
- Não existe valor maior, os dois são iguais
*/

import 'dart:io';

void main() {
  String title = 'Comparando números';
  print('#' * title.length);
  print(title);
  print('#' * title.length);

  try {
    print('Digite o primeiro número');
    num firstNumber = num.parse(stdin.readLineSync());
    print('Digite o segundo número');
    num secondNumber = num.parse(stdin.readLineSync());

    print('Os números são primeiro = $firstNumber e segundo = $secondNumber');

    int result = firstNumber.compareTo(secondNumber);

    switch (result) {
      case 1:
        print('O primeiro valor é maior');
        break;
      case 0:
        print('Não existe valor maior, os dois são iguais');
        break;
      case -1:
        print('O segundo valor é maior');
        break;
      default:
        'Provavelmente você não digitou um número valido. Tente novamente!!!';
    }
  } on FormatException {
    print(
        'Provavelmente você não digitou um número valido. Tente novamente!!!');
  } catch (e) {
    print('Ops... aconteceu algo errado');
  }
}
