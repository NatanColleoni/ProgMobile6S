import 'package:revisao/domain/endereco.dart';
import 'package:revisao/domain/enums/status_pedido.dart';
import 'package:revisao/domain/pedido.dart';
import 'package:revisao/domain/pessoa.dart';
import 'package:revisao/domain/produto.dart';
import 'package:test/test.dart';

void main() {
  test('testa valor total pedido', () {
    var enderecoCliente = Endereco('00000-000', '122A', 'Rua Unicesumar', 'Jardim Cesumar', 'Maringa', 'PR');
    var cliente = Pessoa('Henrique', '000.000.000-00', '(00) 9-0000-0000', 'henrique@unicesumar.edu.br', enderecoCliente);
    var produtos = [
      Produto('Vassoura', 'Uma vassoura muito boa', 12.50, DateTime.now().subtract(Duration(days: 1)), DateTime.now().add(Duration(days: 1250)), '01')
    ];
    var pedido = Pedido(cliente, produtos, StatusPedido.pago);
    expect(12.50, pedido.getValorTotal());
  });

  test('testa quantidade de itens do pedido', () {
    var enderecoCliente = Endereco('00000-000', '122A', 'Rua Unicesumar', 'Jardim Cesumar', 'Maringa', 'PR');
    var cliente = Pessoa('Henrique', '000.000.000-00', '(00) 9-0000-0000', 'henrique@unicesumar.edu.br', enderecoCliente);
    var produtos = [
      Produto('Vassoura', 'Uma vassoura muito boa', 12.50, DateTime.now().subtract(Duration(days: 1)), DateTime.now().add(Duration(days: 1250)), '01'),
      Produto('Rodinho', 'Um rodinho muito bom', 22.50, DateTime.now().subtract(Duration(days: 1)), DateTime.now().add(Duration(days: 1250)), '01')
    ];
    var pedido = Pedido(cliente, produtos, StatusPedido.pago);
    expect(2, pedido.getQuantidadeTotal());
  });
}
