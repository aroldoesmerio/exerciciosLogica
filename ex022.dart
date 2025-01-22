import 'dart:io';

void main() {
  print('Digite seu nome completo: ');
  String name = stdin.readLineSync() ?? '';

  print('Seu nome em maiúsculas é ${name.toUpperCase()}');

  print("Seu nome em minúsculas é ${name.toLowerCase()}");

  print("Seu nome tem ao todo ${name.length} letras");

  print('Seu primeiro nome é ${name.split(" ").first}');

  print(
      'Seu primeiro nome é ${name.split(" ").first} e ele tem ${name.split(" ").first.length} letras ');
}
