import 'package:revisao/domain/enums/StatusPedido.dart';
import 'package:revisao/domain/pessoa.dart';
import 'package:revisao/domain/produto.dart';

class Pedido {
  Pessoa cliente;
  List<Produto> produtos;
  StatusPedido status;

  Pedido(this.cliente, this.produtos, this.status);

  double getValorTotal() {
    return produtos.fold(0.0, (previousValue, element) => previousValue += element.valor);
  }

  int getQuantidadeTotal() {
    return produtos.length;
  }
}