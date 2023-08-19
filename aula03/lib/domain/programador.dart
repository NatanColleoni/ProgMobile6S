import 'package:aula03/domain/cargo.dart';

class Programador implements Cargo {

  @override
  double? calculaSalario() {
    return 6500;
  }

}