/*
Escreva um programa que pergunte a quantidade de KM percorridos por um carro 
alugado e a quantidade de dias pelos quais ele foi alugado.
Calcule o preço a pagar, sabendo que o carro custa R$60 por dia e R$0.15 por km
rodado
*/
import 'dart:io';

void main() {
  print('Quantos KM foram percorridos?');
  double kmUsage = double.parse(stdin.readLineSync());
  print('Quantos dias permaneceu alugado?');
  int dayUsage = int.tryParse(stdin.readLineSync());

  calculate(km: kmUsage, day: dayUsage);
}

calculate({double km, int day}) {
  const double valuePerDay = 60;
  const double valuePerKm = 0.15;

  double totalPerDay = day * valuePerDay;
  double totalPerKm = km * valuePerKm;
  double valueFinal = totalPerDay + totalPerKm;

  print('O valor total do custo é de R\$${valueFinal.toStringAsFixed(2)}');
}
