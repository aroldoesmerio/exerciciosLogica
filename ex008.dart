import 'dart:io';

void main() {
  print('Uma distancia em metros .... ');
  double path = double.parse(stdin.readLineSync());
  print('A medida de ${path.toStringAsPrecision(1)} corresponde a ....');

  print('---------------------------');
  print('${path.toStringAsPrecision(1)} metros são ${path / 1000} kilometros');
  print('${path.toStringAsPrecision(1)} metros são ${path / 100} hectômetro');
  print('${path.toStringAsPrecision(1)} metros são ${path / 10} decâmetro');
  print('${path.toStringAsPrecision(1)} metros são ${path * 10} decímetro');
  print('${path.toStringAsPrecision(1)} metros são ${path * 100} milímetro');
  print('${path.toStringAsPrecision(1)} metros são ${path * 1000} micrômetro');
}
