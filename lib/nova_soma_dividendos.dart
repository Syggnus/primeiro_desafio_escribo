import 'dart:io';
import 'package:desafio_escribo_1/somar_dividendos.dart';

///Função para escolher se vai realizar outra soma dos Nº divisiveis.
novaSomaDividendos() {
  print("Deseja testar outro número ?\n1 - Sim\n2 - Não");

  ///Recendo a String digitada no console
  String? escolha = stdin.readLineSync();

  ///Caso a String corresponda a alguns desses casos irá chamar a Função somarNumerosDivisiveis().
  switch (escolha) {
    case "1":
    case "Sim":
    case "sim":
    case "S":
    case "s":
      somarDividendos();
      break;

    ///Caso a String corresponda a alguns desses casos apenas irá finalizar o programa.
    case "2":
    case "Não":
    case "não":
    case "nao":
    case "N":
    case "n":
      print("Desafio Finalizado.");
      break;

    ///Caso a String não corresponda a nenhum caso acima, irá chamar a própria Função.
    default:
      print("Opção inválida");
      novaSomaDividendos();
  }
}
