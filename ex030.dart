/*
Exercicio 30
Crie um programa que leia um numero inteiro
e mostre na tela se é par ou impar
*/

import 'dart:io';

void main() {
  print('Digite um número inteiro');
  int numInt = int.parse(stdin.readLineSync() ?? '');

  String result = numInt % 2 == 0 ? 'Par' : 'Impar';

  print('=====> $result');
}
