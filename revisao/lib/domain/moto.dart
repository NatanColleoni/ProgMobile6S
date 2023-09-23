import 'package:revisao/domain/interfaces/veiculo.dart';

class Moto implements Veiculo {
  
  
  @override
  double calculaConsumo(double distancia) {
    return (distancia + 5) / 2;
  }
}