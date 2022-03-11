/* 
Vou pensar em um numero de 0 a 5. Tente adivinhar...
Em que numero pensei
*/
import 'dart:io';

void main() {
  List<int> sortNumbers = [0, 1, 2, 3, 4, 5];

  print('Vou pensar em um numero de 0 a 5. Tente adivinhar ....');
  int choiceNumber = int.parse(stdin.readLineSync());

  print("Aguarde o resultado ....");
  Future.delayed(Duration(seconds: 5), () {
    sortNumbers.shuffle();

    int sortedNumber = sortNumbers.first;
    (sortedNumber == choiceNumber)
        ? print("Wow voce acertou")
        : print("Ops ... Tente novamente");
    print("=====================RESUMO========================");
    print("Eu pensei neste numero  ${sortedNumber} ");
    print('voce escolheu $choiceNumber');
  });
}
