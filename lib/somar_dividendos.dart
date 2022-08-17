import 'dart:io';
import 'package:desafio_escribo_1/validar_numero.dart';
import 'nova_soma_dividendos.dart';

///Função para somar os números menores do que o número de entrada que sejam divisiveis por 3 e 5.
somarDividendos() {
  print(
      "Digite um número inteiro positivo para saber a soma dos valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao seu número.");

  ///Recebendo a String digitada no console.
  String entradaDeDados = stdin.readLineSync()!;

  ///Chamando a Função de Validação.
  if (validarNumero(entradaDeDados) == true) {
    ///Caso a String seja de fato um número, transforma ela em um "int" e armazena em "numeroValido".
    int numeroValido = int.parse(entradaDeDados);
    int somaNumerosDivisiveis = 0;

    ///Caso seja um número válido, faz a verificação dos números divisiveis e os soma.
    for (var dividendo = 1; dividendo < numeroValido; dividendo++) {
      if (dividendo % 3 == 0 || dividendo % 5 == 0) {
        somaNumerosDivisiveis += dividendo;
      }
    }

    ///Exibe no console o número digitado pelo usuário e o resultado da soma dos números divisiveis por 3 e 5.
    ///Chama a Função para caso queira repetir a operação.
    print(
        "A soma dos números divisíveis por 3 ou 5 inferiores ao número $numeroValido é: $somaNumerosDivisiveis");
    novaSomaDividendos();

    ///Caso seja um número inválido, a função vai chamar a própria função para começar novamente.
  } else {
    somarDividendos();
  }
}
