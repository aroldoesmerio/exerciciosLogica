import 'dart:io';

main(List<String> args) {
  print("Digite algo: ");
  var text = stdin.readLineSync();

  var tipagem = text.runtimeType;

  print("O tipo primitivo desse valor é <$tipagem>");
  print("Só tem espaços? ${text.trim().isEmpty}");
  print("É um número? ${text.contains(RegExp(r'^[0-9]+'))}");
  print("É alfabético? ${text.contains(new RegExp(r'^\D+$'))}");
  print("É alfanumérico? ${!text.contains(new RegExp(r'^\D+$'))}");
  print("Esta em maiúsculas? ${text.toUpperCase() == text}");
  print("Esta em minúsculas? ${text.toLowerCase() == text}");
  print("Esta capitalizada? ${text[0].toUpperCase() == text[0]}");
}
