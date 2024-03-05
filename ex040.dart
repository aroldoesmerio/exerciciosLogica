/*
Crie um programa que leia duas notas de um aluno e calcule sua média,
mostrando uma mensagem no final, de acordo com a média atingida.
- Média abaixo de 5.0 = Reprovado
- Média entre 5.0 e 6.9 = Recuperação 
- Média 7.0 ou superior = Aprovado
*/

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'json/json_models.dart';

void main(List<String> args) {
  String title = 'Programa média';
  String menuDeOpcoes = 'Menu de Opções';
  String nomeAluno = '';
  bool lista = false;
  bool sair = false;
  bool tentarNovamente = false;
  List<AlunoModel> meusAlunos;
  meusAlunos = fetchListaDeAlunos();
  print('&' * title.length);
  print(title);
  print('&' * title.length);

  while (!sair) {
    print('$menuDeOpcoes..:');
    print('Digite 1 - Para pesquisar nome do aluno');
    print('Digite 2 - Para listar a situação geral da turma');
    print('Digite 3 - Para sair');
    int myMenu = int.tryParse(stdin.readLineSync());

    switch (myMenu) {
      case 1:
        print('Digite o nome do aluno');
        nomeAluno = stdin.readLineSync();
        break;
      case 2:
        print('Aguarde ... ');
        print('lista sendo exibida');
        lista = true;
        break;
      case 3:
        nomeAluno = '';
        lista = false;
        sair = true;
        print('Obrigado.');
        break;
      default:
        nomeAluno = '';
        lista = false;
        sair = true;
        print('Você não digitou um número válido');
    }

    bool hasAluno;

    try {
      meusAlunos.forEach(
        (element) {
          hasAluno = nomeAluno == element.nome;
          if (hasAluno) {
            print(element.calculoMedia());
          } else if (lista) {
            print(element.calculoMedia());
          } else if (lista == false) {
            while (element.id == meusAlunos.length) {
              print('tentar novamente');
            }
          }
        },
      );
    } on NoSuchMethodError {
      print('Você não digitou um nome válido');
    } catch (e) {
      print('Ocorreu um problema, tente novamente');
    } finally {
      nomeAluno = '';
      lista = false;
      hasAluno = false;
    }
  }
}

List<dynamic> fetchListaDeAlunos() {
  var response = dadosDoUsuario();

  return (json.decode(response) as List)
      .map((e) => AlunoModel.fromJson(e))
      .toList();
}

class AlunoEntity {
  int id;
  String nome;
  int nota;

  AlunoEntity({this.id, this.nome, this.nota});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'username': nome,
        'nota': nota,
      };
}

class AlunoModel extends AlunoEntity {
  AlunoModel({int id, String nome, int nota})
      : super(id: id, nome: nome, nota: nota);

  factory AlunoModel.fromJson(Map<dynamic, dynamic> json) => AlunoModel(
        id: json['id'],
        nome: json['username'],
        nota: (json['nota']),
      );

  @override
  String toString() {
    return 'nome $nome - id $id - nota $nota';
  }

  String calculoMedia() {
    double media = (nota + id) / 2;

    if (media < 5.0) {
      return 'O aluno $nome ficou com $media com situacao Reprovado';
    } else if (media >= 5 && media < 7) {
      return 'O aluno $nome ficou com $media com situacao Recuperação';
    } else {
      return 'O aluno $nome ficou com $media com situacao Aprovado';
    }
  }
}
