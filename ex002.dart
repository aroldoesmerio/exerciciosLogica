//Faça um programa que leia o nome de uma pessoa e mostre uma mensagem de boas-vindas
import 'dart:io';

main(List<String> args) {
  String name;

  print("Type your name ...");
  name = stdin.readLineSync();

  print("Welcome $name");
}
