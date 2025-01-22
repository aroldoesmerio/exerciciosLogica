// Crie um programa que leia o nome de uma cidade e diga se ela começa ou não com a palavra SANTO

import 'dart:io';

void main() {
  print('Digite a cidade onde vc nasceu ?');
  String city = stdin.readLineSync() ?? ''.trim().toUpperCase();

  print(city.startsWith('SANTO', 0));
}
