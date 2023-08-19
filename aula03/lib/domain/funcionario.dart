import 'package:aula03/domain/cargo.dart';
import 'package:aula03/domain/pessoa.dart';

class Funcionario extends Pessoa{
  
  String? matricula;
  Cargo? cargo;

  Funcionario(super.nome, super.idade, this.matricula, this.cargo);

  @override
  double? algumValor() {
    return 2;
  }
}