import 'package:revisao/domain/interfaces/veiculo.dart';

class Caminhao implements Veiculo {
  
  @override
  double calculaConsumo(double distancia) {
    return distancia / 8;
  }
}