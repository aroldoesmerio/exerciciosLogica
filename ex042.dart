/*
Refaça o DESAFIO 035 dos triangulos, acrescentando o recurso de mostrar 
que tipo de triangulo será formado: 

- Equilatero : todos os lados iguais
- Isósceles : dois lados iguais 
- Escalendo : todos os lados diferentes
*/

import 'dart:io';

void main() {
  print('-' * 10);

  print('Digite o primeiro lado');
  double v1 = double.parse(stdin.readLineSync() ?? '');
  print('Digite o segundo lado');
  double v2 = double.parse(stdin.readLineSync() ?? '');
  print('Digite o terceiro lado');
  double v3 = double.parse(stdin.readLineSync() ?? '');

  print('-' * 10);
  print('Por favor aguarde ... ');

  bool isTriangle = (v1 < v2 + v3) && (v2 < v1 + v3) && (v3 < v1 + v2);
  bool isEquilatero = v1 == v2 && v2 == v3;
  bool isIsosceles = v1 == v2 || v2 == v3 || v3 == v1;

  Future.delayed(Duration(seconds: 3)).then((_) {
    if (isTriangle) {
      if (isEquilatero) {
        print('Triangulo Equilatero');
      } else if (isIsosceles) {
        print('Triangulo Isosceles');
      } else {
        print('Triangulo Escaleno');
      }
    } else {
      print('Não é  Triangulo');
    }
  });
}
