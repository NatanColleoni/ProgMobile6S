import 'package:revisao/domain/endereco.dart';

class Pessoa {
  String nome;
  String documento;
  String telefone;
  String email;
  Endereco endereco;

  Pessoa(this.nome, this.documento, this.telefone, this.email, this.endereco);

  bool validarDocumento(String documento) {
    return false;
  }
}