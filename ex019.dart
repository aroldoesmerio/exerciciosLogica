/* 
Exercicio 19 
Um professor quer sortear um dos seus quatro alunos para apagar o quadro. Faça 
um programa que ajude ele, lendo o nome deles e escrevendo o nome do escolhido.
*/

import 'dart:io';

void main() {
  print('== SORTEIO DE ALUNOS == ');

  List list = <String>[];

  for (int i = 1; i < 5; i++) {
    print('Digite o Aluno $i');
    String student = stdin.readLineSync();
    list.add(student);
  }
  var randomItem = (list.toList()..shuffle());
  print("============= O Aluno sorteado foi ===========");
  print(randomItem[0]);
  print("===============================================");
}
