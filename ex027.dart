import 'dart:io';

void main() {
  String name;

  print('Type your full name');
  name = stdin.readLineSync().toLowerCase();
  print('Nice to meet you');
  print('Your full name is $name');
  List<String> listname = name.split(" ");
  print('Your first name is ${listname.first}}');
  print(('Your last name is ${listname.last}'));
}
