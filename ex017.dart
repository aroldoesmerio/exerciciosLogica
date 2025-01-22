//a2 = b2 + c2
import 'dart:io';
import 'dart:math';

void main() {
  double catetoOposto;
  double catetoAdjacente;
  double hipotenusa;

  print('Digite o cateto Oposto');
  catetoOposto = double.parse(stdin.readLineSync() ?? '');

  print('Digite o cateto adjacente');
  catetoAdjacente = double.parse(stdin.readLineSync() ?? '');

  hipotenusa = sqrt(pow(catetoOposto, 2) + pow(catetoAdjacente, 2));

  print('A hipotenusa é ${hipotenusa.toStringAsFixed(2)}');
}
