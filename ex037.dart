/*
ESCREVA UM PROGRAMA QUE LEIA UM NÚMERO INTEIRO QUALQUER E PEÇA
PARA O USUÁRIO ESCOLHER QUAL A BASE DE CONVERSÃO: 
- 1 PARA BINÁRIO
- 2 PARA OCTAL 
- 3 PARA HEXADECIMAL 
*/

import 'dart:io';

void main() {
  print('=' * 20);
  print('Conversor de bases');
  print('=' * 20);
  print('Digite um número inteiro =');

  try {
    var numberInt = int.parse(stdin.readLineSync() ?? '');
    print('Digite 1, para binário');
    print('Digite 2, para octal');
    print('Digite 3, para exadecimal');
    print('Digite sua opção = ');
    int option = int.parse(stdin.readLineSync() ?? '');
    switch (option) {
      case 1:
        return print('Seu resultado é = ${numberInt.toRadixString(2)}');

      case 2:
        return print('Seu resultado é = ${numberInt.toRadixString(8)}');

      case 3:
        return print('Seu resultado é = ${numberInt.toRadixString(16)}');

      default:
        return print('Opção inválida, tente novamente');
    }
  } on FormatException {
    print('Você digitou um número inválido, favor tentar novamente');
  } catch (e) {
    print(e);
  }
}
