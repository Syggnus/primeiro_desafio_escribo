///Função para válidar se a string digitada no console é um número.
bool validarNumero(String entradaDeDados) {
  ///Definindo caracteres válidos.
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = RegExp(patttern);

  ///Caso o valor digitado esteja vazio.
  if (entradaDeDados.isEmpty) {
    print("Informe um número.");
    return false;

    ///Caso o valor digitado seja diferente dos caracteres válidos.
  } else if (!regExp.hasMatch(entradaDeDados)) {
    print("Escolha um número válido!");
    return false;
  }

  ///Caso o número seja válido.
  return true;
}
