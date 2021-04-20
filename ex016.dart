import 'dart:io';

void main() {
  print('Digite um número.: ');
  double valueNumber = double.parse(stdin.readLineSync());

  print('O número $valueNumber tem a parte inteira ${valueNumber.toInt()}');
}
