class Cliente {
  late String nome;
  late String cpf;

  Cliente(String nome, String cpf) {
    this.nome = nome;
    this.cpf = cpf;
  }

  String getNome() {
    return this.nome;
  }

  set setNome(String nome) {
    this.nome = nome;
  }

  String getCpf() {
    return this.cpf;
  }

  set setCpf(String cpf) {
    this.cpf = cpf;
  }

  @override
  String toString() {
    return "$nome";
  }
}
