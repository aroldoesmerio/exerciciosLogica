/*
A confederação nacional de natação precisa de um programa que 
leia o ano de nascimento de um atleta e mostre sua categoria,
de acordo com sua idade : 

- até 9 anos - mirim
- até 14 anos - infantil 
- até 19 anos - junior 
- até 25 anos - senior 
- acima de 25 anos - master 
*/

import 'dart:io';

void main() {
  int calculoDaIdade;
  try {
    print('Digite o ano de nascimento do atleta com 4 digitos.....');
    int anoDeNascimento = int.tryParse(stdin.readLineSync());
    if (anoDeNascimento.toString().length == 4 && anoDeNascimento >= 1900) {
      calculoDaIdade = DateTime.now().year - anoDeNascimento;
    }
  } catch (e) {}

  try {
    if (calculoDaIdade <= 9) {
      print('O atleta tem $calculoDaIdade anos e pertence a categoria MIRIM');
    } else if (calculoDaIdade <= 14) {
      print(
          'O atleta tem $calculoDaIdade anos e pertence a categoria INFANTIL');
    } else if (calculoDaIdade <= 19) {
      print('O atleta tem $calculoDaIdade anos e pertence a categoria JUNIOR');
    } else if (calculoDaIdade <= 25) {
      print('O atleta tem $calculoDaIdade anos e pertence a categoria SENIOR');
    } else {
      print('O atleta tem $calculoDaIdade anos e pertence a categoria MASTER');
    }
  } catch (e) {
    print('Você digitou um número inválido');
  }
}
