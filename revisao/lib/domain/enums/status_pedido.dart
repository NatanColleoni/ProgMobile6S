enum StatusPedido/*Prova*/ {
  valorDefault(sigla: ""),
  aguardandoPagamento(sigla: "AP"),
  processandoPagamento(sigla: "PP"),
  pago(sigla: "P");

  const StatusPedido({required this.sigla});

  final String sigla;
}