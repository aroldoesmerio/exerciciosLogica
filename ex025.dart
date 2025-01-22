// Exercicio 25 -   Procurando uma string dentro da outra

import 'dart:io';

void main() {
  print("Type the validator");

  String validator = stdin.readLineSync() ?? ''.toLowerCase();

  print("Type your full name ...");

  String fullName = stdin.readLineSync() ?? ''.toLowerCase();

  print("Your fullName is $fullName");

  findName(value: fullName, validator: validator);
}

findName({required String validator, required String value}) {
  (value.contains(
    validator,
  ))
      ? print("Sucess - Contain $validator")
      : print("Failure - Not contain $validator");
}
