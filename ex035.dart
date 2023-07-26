import 'dart:io';

void main() {
  print('-' * 10);

  print('Digite o primeiro lado');
  double v1 = double.parse(stdin.readLineSync());
  print('Digite o segundo lado');
  double v2 = double.parse(stdin.readLineSync());
  print('Digite o terceiro lado');
  double v3 = double.parse(stdin.readLineSync());

  print('-' * 10);
  print('Por favor aguarde ... ');

  bool isTriangle = (v1 < v2 + v3) && (v2 < v1 + v3) && (v3 < v1 + v2);
  Future.delayed(Duration(seconds: 3))
      .then((value) => print(isTriangle ? 'Triangulo' : 'Não é  Triangulo'));
}
