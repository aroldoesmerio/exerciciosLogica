import 'dart:math';
import 'dart:io';

void main() {
  print('Digite o angulo');

  double angulo = double.parse(stdin.readLineSync());

  double seno = asin(angulo);
  double coseno = acos(angulo);
  double tangente = atan(angulo);

  print('Este eh o angulo $angulo');

  print('Este eh o seno ${seno}');
  print('Este eh o seno ${coseno}');
  print('Este eh a tangente ${tangente}');
}
