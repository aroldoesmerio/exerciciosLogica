//Faça um programa que leia um ano qualquer e mostre se ele é BISSEXTO

import 'dart:io';

void main() {
  print('Digite um ano');

  int ano = int.parse(stdin.readLineSync());

  bool verifycent = verifyYearCent(ano);
  bool verifiy = verifyYear(ano);

  print((verifycent || verifiy) ? 'Ano Bissexto' : 'Ano normal ');
}

bool verifyYearCent(int year) => ((year % 100 == 0) && (year % 400 == 0));

bool verifyYear(int year) =>
    ((verifyYearCent(year) == false) && (year % 4 == 0));
