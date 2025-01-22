import 'dart:io';

void main() {
  print("Digite um numero");
  int value = int.parse(stdin.readLineSync() ?? '');

  int antecessor = value - 1;
  int sucessor = antecessor + 2;
  // print("este eh o value $value");
  // print("este eh o antecessor $antecessor");
  // print("este eh o sucessor $sucessor");

  print(
      "Analisando o valor $value, seu antecessor é $antecessor e o sucessor é $sucessor");
}
