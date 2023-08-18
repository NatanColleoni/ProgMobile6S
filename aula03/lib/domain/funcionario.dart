import 'package:aula03/domain/pessoa.dart';

class Funcionario extends Pessoa{
  
  String? matricula;

  Funcionario(super.nome, super.idade, this.matricula);
}