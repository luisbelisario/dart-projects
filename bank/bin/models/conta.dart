import 'cliente.dart';

class Conta {
  late String agencia;
  late String conta;
  late Cliente cliente;
  late double saldo;

  Conta(String agencia, String conta, Cliente cliente, double saldo) {
    this.agencia = agencia;
    this.conta = conta;
    this.cliente = cliente;
    this.saldo = saldo;
  }

  String getAgencia() {
    return this.agencia;
  }

  String getConta() {
    return this.conta;
  }

  Cliente getCliente() {
    return this.cliente;
  }

  double getSaldo() {
    return this.saldo;
  }

  set setAgencia(String agencia) {
    this.agencia = agencia;
  }

  set setConta(String conta) {
    this.conta = conta;
  }

  set setCliente(Cliente cliente) {
    this.cliente = cliente;
  }

  set setSaldo(double saldo) {
    this.saldo = saldo;
  }

  @override
  String toString() {
    return "$agencia" + " $conta" + " $cliente" + " $saldo";
  }
}
