/*
Qual é o salario do funcionário ? 

O funcionário que ganhava VALOR, com 15% de aumento, passa a ganhar NOVOVALOR

*/
import 'dart:io';

void main() {
  const int _plus15 = 15;
  print('Qual é o salario do funcionário');
  double valueSalary = double.parse(stdin.readLineSync());

  calculateSalary(valueSalary);

  print(
    'O funcionário que ganhava $valueSalary, com o aumento de $_plus15\%, passa a receber ${calculateSalary(valueSalary)}',
  );
}

double calculateSalary(double salary) {
  double newValueSalary;
  newValueSalary = salary + salary * 15 / 100;
  return newValueSalary;
}
