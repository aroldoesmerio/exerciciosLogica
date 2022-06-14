/*
Escreva um programa que pergunte o salario de um funcionario e calcule o valor do seu aumento 
Para salarios superiores a R$1250,00, calcule um aumento de 10% 
para inferiores ou iguais o aumento é de 15% 
*/

import 'dart:io';

void main() {
  print('Digite o salario ...');
  double salary = double.parse(stdin.readLineSync());
  finalSalary(salary);
}

finalSalary(double value) {
  if (value > 1250) {
    print('O valor do seu salário é de ${((value * 15) / 100) + value}');
  } else {
    (value * 10) / 100;
    print('O valor do seu salário é de ${((value * 10) / 100) + value}');
  }
}
