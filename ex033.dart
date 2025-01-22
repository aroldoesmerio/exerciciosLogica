/* 
Faça um programa que leia tres numeros e 
mostre qual é o maior e qual é o menor
*/
import 'dart:io';

void main() {
  print('digite um numero a ');
  int a = int.parse(stdin.readLineSync() ?? '');
  print('digite um numero b ');
  int b = int.parse(stdin.readLineSync() ?? '');
  print('digite um numero c ');
  int c = int.parse(stdin.readLineSync() ?? '');

  List myNumbers = [a, b, c];

  myNumbers.sort();

  print(myNumbers);

  print('O maior numero é .... ${myNumbers.last}');

  print('O menor numero é .... ${myNumbers.first}');
}
