/*
Faça um programa que leia o ano de nascimento de um jovem e de acordo com a sua idade informe : 
- Se ele ainda vai se alistar no serviço militar
- Se é a hora de se alistar
- Se já passou do tempo do alistamento
- O tempo que falta
- Passou do prazo 
*/

import 'dart:convert';
import 'json/json_models.dart';

void main() {

  List<dynamic> dados = json.decode(dadosDoUsuario());
  Map<int, dynamic> meusDados = dados.asMap();

  void alistamento(int anoDeNascimento) {
    int anoAtual = DateTime.now().year;
    int idade = anoAtual - anoDeNascimento;

    if (idade < 18) {
      print('Você ainda vai se alistar ');
      print('Ainda faltam ${18 - idade} anos para se alistar');
    } else if (idade == 18) {
      print('Deve se alistar IMEDIATAMENTE');
    } else if (idade > 18 && idade < 65) {
      print('Você já passou do tempo');
    } else {
      print('Esta na hora de curtir sua aposentadoria');
    }
  }

  meusDados.forEach((key, value) {
    print(meusDados[key]['name']);
    print(meusDados[key]['anoDeNascimento']);
    alistamento(int.parse(meusDados[key]['anoDeNascimento']));
    print('#' * meusDados[key]['name'].length);
  });
}
