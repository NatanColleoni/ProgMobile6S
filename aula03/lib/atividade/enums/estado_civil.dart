import 'package:aula03/atividade/calcula_estado_civil.dart';

enum EstadoCivil {
  
  solteiro(percentual: 1.08),
  divorciado(percentual: 1.08),
  casado(percentual: 0.975),
  uniaoEstavel(percentual: 0.975),
  viuvo(percentual: 0.95);

  final double percentual;

  const EstadoCivil({required this.percentual});

  double calculaEstadoCivil(double valorBase) {
    return valorBase * percentual;
  }
}