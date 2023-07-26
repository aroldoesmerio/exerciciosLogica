/*
Escreva um programa para aprovar o emprestimo bancario para a compra de uma casa 
Pergunte o valor da casa , o salario do comprador e em quantos anos ele ira pagar 
a prestação mensal  não pode exceder 30% do salario ou então o emprestimo será 
negado. 
*/

import 'dart:io';

void main() {
  print('Digite o valor total do imovel.: ');
  double propertieTotalValue = double.parse(stdin.readLineSync());
  print('Digite em quantos anos você quer pagar.: ');
  int yearsOfpayment = int.parse(stdin.readLineSync());
  print('Digite seu salario.: ');
  double salaryOfClient = double.parse(stdin.readLineSync());

  PropertieFinancy propertieFinancy = PropertieFinancy(
    propertieTotalValue: propertieTotalValue,
    salaryOfClient: salaryOfClient,
    yearsOfpayment: yearsOfpayment,
  );

  propertieFinancy.getSituation;
}

class PropertieFinancy {
  final double propertieTotalValue;
  final double salaryOfClient;
  final int yearsOfpayment;

  PropertieFinancy({
    this.propertieTotalValue,
    this.salaryOfClient,
    this.yearsOfpayment,
  });

  double get getPercentSalaryOfClient => _percentValue(this.salaryOfClient);

  bool get getSituation =>
      _validateFinancial(this.propertieTotalValue, this.yearsOfpayment);

  double _percentValue(double salary) => (salary * 30) / 100;

  bool _validateFinancial(double propertieValue, int yearsOfpayment) {
    double valuePerYears = yearsOfpayment.toDouble() * 12;

    double valuePerMonth = propertieValue / valuePerYears;

    if (getPercentSalaryOfClient > valuePerMonth) {
      print(
          'Para financiar um imovel no valor total de ${propertieValue.ceil()} em ${yearsOfpayment.ceil()} anos. Serão ${valuePerYears.ceil()} prestações de ${valuePerMonth.ceil()} e neste momento esta aprovado. Vamos seguir??? ');

      return true;
    } else {
      print(
          'Infelizmente seu financiamento foi reprovado. Aguarde 180 dias e refaça a proposta');
      return false;
    }
  }
}
