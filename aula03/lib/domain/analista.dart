import 'package:aula03/domain/cargo.dart';

class Analista implements Cargo {
  
  @override
  double? calculaSalario() {
    return 5500;
  }

}