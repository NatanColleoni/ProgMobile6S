class Pessoa {
  
  //final pode ser manipulado, enquanto const não pode
  late final String nome;
  late final int idade;

  //construtor
  Pessoa(this.nome, this.idade);

  //construtor nomeado
  Pessoa.nome(this.nome);

  Pessoa.total(this.idade, {required String? nome});
}