import 'dart:io';

void main() {
  print('Qual é o preço do produto');
  double productValue = double.parse(stdin.readLineSync() ?? '');
  double result = percentageCalcule(productValue);

  print('o Valor do desconto é R\$${result.toStringAsFixed(2)}');
  print(
      'O produto que custava  R\$$productValue, agora com o desconto de 5% valerá  R\$${(productValue - result).toStringAsFixed(2)}');
}

percentageCalcule(double value) => (value * 0.05);
