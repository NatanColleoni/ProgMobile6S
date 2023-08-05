import 'package:dart/dart.dart' as dart;

//late String nome; // será inicializada em outro momento

void main(List<String> arguments) {
  
  // 04/08/2023 - Aula 1 -  variaveis, nullable/non-nullable, late
  // 04/08/2023 - Aula 2 - const, final, list, set, tipos, map - equivalente a dicionários em c#, spread
  // 04/08/2023 - Exercício
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

  // nome = _getNome();
  // print(nome);

  // const listaCompras = ['Arroz', 'Feijão']; 
  //listaCompras.add('Carne');  erro

  // final listaItens = ['Monitor', 'Teclado']; // pode mudar no runtime
  // listaItens.add('Computador');
  // listaItens.removeWhere((element) => element == 'Computador');

  // print(listaCompras);
  // print(listaItens);
  // Set<tipo> é um tipo com elementos que não se repetem
  // var nome = 'Natan';
  // print("Meu nome é: ${nome.toUpperCase()}");

  // Map<String, int> salas = {
  //   'Henrique': 13,
  //   'João': 14
  // };

  // var listaCompra = ['Arroz', 'Feijão'];
  // var novaLista = ['Macarrão', ...listaCompra];

  // print(novaLista);

  //nome do aluno, materia, lista de notas
  Map<String, Map<String, List<int>>> alunos; 

}

/*
String _getNome() {
  return "";
}
*/