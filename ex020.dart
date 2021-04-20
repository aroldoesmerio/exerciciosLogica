/*
Faça um programa que leia o nome de quatro alunos e mostre a ordem sorteada
*/
import 'dart:io';

void main() {
  List studentsList = [];

  for (int i = 1; i < 5; i++) {
    print('Digite o nome do aluno $i');
    String students = stdin.readLineSync();
    studentsList.add(students);
  }

  List randomList = (studentsList.toList()..shuffle());

  print(randomList);
}
