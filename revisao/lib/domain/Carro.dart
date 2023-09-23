import 'package:revisao/domain/interfaces/veiculo.dart';

class Carro implements Veiculo {
  
  @override
  double calculaConsumo(double distancia) {
    return distancia / 5;
  }

}