import 'package:aula02/aula02.dart';
import 'package:test/test.dart';

void main() {
  test('deve calcular arredondamento com múltiplos de 5', () {
    expect(arredondaMedia(84, 5), 85);
    expect(arredondaMedia(29, 5), 29);
    expect(arredondaMedia(57, 5), 57);
    expect(arredondaMedia(39, 5), 40);
  });

  test('deve validar aluno aprovado ou reprovado', () {
    expect(foiAprovado(85), true);
    expect(foiAprovado(29), false);
  });
}
