//Soma de dois numeros inteiros

import 'dart:io';

main(List<String> args) {
  int a;
  int b;

  print("Type the first number");
  a = int.parse(stdin.readLineSync());

  print("Type the second number");
  b = int.parse(stdin.readLineSync());

  int calculo = soma(
    primeiro: a,
    segundo: b,
  );

  print("A soma dos números é $calculo");
}

int soma({int primeiro, int segundo}) => primeiro + segundo;
