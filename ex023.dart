import 'dart:io';

void main() {
  print('Digite um numero');
  int num = int.parse(stdin.readLineSync());
  print('Analisando o numero ... ${num}');

  int unidade = (num / 1 % 10).toInt();
  int dezena = (num / 10 % 10).toInt();
  int centena = (num / 100 % 10).toInt();
  int milhar = (num / 1000 % 10).toInt();

  print('Unidade .... ${unidade.toStringAsPrecision(1)}');

  print('Dezena  .... ${dezena.toStringAsPrecision(1)}');

  print('Centena .... ${centena.toStringAsPrecision(1)}');

  print('Milhar  .... ${milhar.toStringAsPrecision(1)}');
}
