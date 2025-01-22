import 'dart:io';

void main() {
  print('Digite um número para ver a sua tabuada');
  int number = int.parse(stdin.readLineSync() ?? '');

  for (var i = 0; i < 11; i++) {
    int returnValue = number * i;
    print('$number x ${i}  = $returnValue');
  }
}
