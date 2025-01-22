import 'dart:io';
import 'dart:math' as math;

void main() {
  print("Digite um numero: ");
  double number = double.parse(stdin.readLineSync() ?? '');

  double numberDouble = (number * 2);
  print("O dobro de $number é ${numberDouble.toStringAsPrecision(2)}");

  double numberTriplo = (number * 3);
  print("O triplo de $number é ${numberTriplo.toStringAsPrecision(2)}");

  print("A raiz quadrada de $number é ${math.sqrt(number).toInt()}");
}
