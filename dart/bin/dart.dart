import 'package:dart/dart.dart' as dart;

late String nome; // será inicializada em outro momento

void main(List<String> arguments) {
  
  //04-08-2023 variaveis, nullable/non-nullable, late
  /*
  var nome = 'Natan';
  /*
  nome = 1; 
  inválido, pois mesmo sem declarar o tipo, depois de um valor atribuido o seu tipo não muda
  porém, isto pode ser feito utilizando o tipo dinâmico
  */

  String outroNome = 'Henrique';

  dynamic tipoDinamico = 'NomeTeste';
  tipoDinamico = 1;

  
  print(nome);
  print(outroNome);
  print(tipoDinamico);
  

  String nome; non-nullable
  String? nome; nullable
  print(nome);
  */

  nome = _getNome();
  print(nome);
}

String _getNome() {
  return "";
}