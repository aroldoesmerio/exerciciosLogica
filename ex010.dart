import 'dart:io';

void main() {
  print('Quanto você tem na carteira ? R\$');
  double walletValue = double.parse(stdin.readLineSync() ?? '');

  returnValue(walletValue);
}

void returnValue(double value) {
  double dollarValue = 5.38;
  print(
      'Com R\$$value você pode comprar US\$${(dollarValue * value).toStringAsFixed(2)} ');
}
