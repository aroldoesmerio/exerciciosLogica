/*
Exercício 26 - leitura de posições em uma string  
Faça um programa que leia uma frase pelo teclado e:
- Mostre quantas vezes aparece a letra "A", 
- Em que posição ela aparece a primeira vez  
- Em que posição ela aparece a última vez.
*/

import 'dart:io';

void main() {
  String myText;
  String searchText;

  print("Digite uma letra para procurar");
  searchText = stdin.readLineSync().toLowerCase();
  print("Digite um texto");
  myText = stdin.readLineSync().toLowerCase();

  print('O texto digitado foi ${myText}');
  List str = myText.split(searchText);
  print("A letra $searchText, aparece ${str.length - 1} vezes");
  print(
      "A letra $searchText, aparece pela primeira vez na ${myText.indexOf(searchText) + 1} posição");
  print(
      'A letra $searchText, aparece pela ultima vez na ${myText.lastIndexOf(searchText) + 1} posição');
}
