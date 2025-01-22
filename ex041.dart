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
  print('Digite o ano de nascimento do atleta com 4 digitos.....');
  String dataTyped = stdin.readLineSync() ?? '';
  int calculoDaIdade = 0;

  if (dataTyped.isEmpty || dataTyped == '' || dataTyped.length != 4) {
    print(
        'Não identificamos os dados digitados, favor digitar novamente com 4 digitos. Exemplo 1994');
  } else {
    try {
      int anoDeNascimento = int.parse(dataTyped);
      calculoDaIdade = DateTime.now().year - anoDeNascimento;

      if (calculoDaIdade >= 0 && calculoDaIdade <= 9) {
        print('O atleta tem $calculoDaIdade anos e pertence a categoria MIRIM');
      } else if (calculoDaIdade >= 0 && calculoDaIdade <= 14) {
        print(
            'O atleta tem $calculoDaIdade anos e pertence a categoria INFANTIL');
      } else if (calculoDaIdade >= 0 && calculoDaIdade <= 19) {
        print(
            'O atleta tem $calculoDaIdade anos e pertence a categoria JUNIOR');
      } else if (calculoDaIdade >= 0 && calculoDaIdade <= 25) {
        print(
            'O atleta tem $calculoDaIdade anos e pertence a categoria SENIOR');
      } else if (calculoDaIdade >= 0 && calculoDaIdade <= 50) {
        print(
            'O atleta tem $calculoDaIdade anos e pertence a categoria MASTER');
      } else {
        print(
            'Para este campeonato só serão aceitas vagas disponíveis para atletas até 50 anos. Obrigado por participar!');
      }
    } catch (e) {
      print(
          'Não identificamos os dados digitados, favor digitar novamente com 4 digitos. Exemplo 1994');
    }
  }
}
