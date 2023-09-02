import 'dart:io';

import 'package:calculadora_imc/pessoa.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  var pessoa = Pessoa();
  var imc;
  String? nome;
  do {
    stdout.write("Digite o seu nome: ");
    nome = stdin.readLineSync();

    if (nome == null || nome.isEmpty) {
      print("Nome inválido. Por favor, tente novamente.");
    }
  } while (nome == null || nome.isEmpty);

  print(nome);

  String nomeValidado = nome!;
  stdout.write("Digite o seu peso (kg): ");
  var peso = double.parse(stdin.readLineSync()!);
  pessoa.setPeso(peso);

  stdout.write("Digite a sua altura (cm): ");
  var altura = double.parse(stdin.readLineSync()!);
  do {
    altura == null || altura < 10;
  } while (altura == null || altura < 10);
  // do {
  //   stdout.write("Digite a sua altura (cm): ");
  //   var altura = double.parse(stdin.readLineSync()!);

  //   if (altura == null && altura == "" && altura < 100) {
  //     print("Altura inválida. Digite sua altura em cm. Ex 177 .");
  //   }
  // } while (altura == null || altura == '' || altura < 100);

  imc = peso / ((altura / 100) * (altura / 100));

  if (imc < 18.5) {
    print(
        " ${pessoa.getName(nomeValidado)} você está com baixo peso seu imc é: ${imc.toStringAsFixed(1)}");
  } else if (imc > 18.5 && imc < 24.9) {
    print(
        " ${pessoa.getName(nomeValidado)} você está com  peso normal seu imc é: ${imc.toStringAsFixed(1)}");
  } else if (imc >= 25 && imc <= 29.9) {
    print(
        " ${pessoa.getName(nomeValidado)} você está pré-obeso seu imc é: ${imc.toStringAsFixed(1)}");
  } else if (imc >= 30 && imc <= 34.9) {
    print(
        " ${pessoa.getName(nomeValidado)} você está obeso grau I seu imc é:${imc.toStringAsFixed(1)}");
  } else if (imc >= 35 && imc <= 39.9) {
    print(
        " ${pessoa.getName(nomeValidado)} você está obeso grau II (Severa) seu imc é: ${imc.toStringAsFixed(1)}");
  } else if (imc > 40) {
    print(
        " ${pessoa.getName(nomeValidado)} você está obeso grau III (mórbida) seu imc é: ${imc.toStringAsFixed(1)}");
  }
}
