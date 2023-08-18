import 'package:aula03/aula03.dart' as aula03;
import 'package:aula03/domain/funcionario.dart';
import 'package:aula03/domain/pessoa.dart';

//Aula sobre POO
void main(List<String> arguments) {
  
  Pessoa manuel = Pessoa("Manuel", 20);
  print(manuel);

  Pessoa jose = Pessoa.nome("José");
  print(jose);

  Pessoa joaquim = Pessoa.total(80, nome: "Joaquim");
  Pessoa nameless = Pessoa.total(80, nome: null);
  
  var funcionario = Funcionario("João", 20, "123AB");

  print(funcionario.nome);
}
