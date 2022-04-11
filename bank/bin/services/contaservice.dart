import '../database/contarepository.dart';
import '../models/conta.dart';

class ContaService {


  void adicionaConta(Conta conta) {
    DataBaseConta.addConta(conta);
  }

  void adicionarVariasContas(List<Conta> listaContasAdd) {
    for(Conta conta in listaContasAdd) {
      DataBaseConta.addConta(conta);
    }
  }

  void listarContas() {
    List<Conta> listaContas = DataBaseConta.listarContas();
    for(Conta conta in listaContas) {
      print(conta);
    }
  }

  void atualizarConta(Conta conta) {
    Conta contaExclude = retornaContaPorCpf(conta.cliente.cpf);
    DataBaseConta.excluirConta(contaExclude);
    DataBaseConta.addConta(conta);
  }

  Conta retornaContaPorCpf(String cpf) {
    return DataBaseConta.retornaContaPorCpf(cpf);
  }

  void depositar(String cpf, double valor) {
    Conta conta = retornaContaPorCpf(cpf);
    conta.saldo += valor;
    atualizarConta(conta);
  }

  void sacar(String cpf, double valor) {
    Conta conta = retornaContaPorCpf(cpf);
    if (valor > conta.saldo) {
      print("Saldo insuficiente");
      return;
    }
    conta.saldo -= valor;
    atualizarConta(conta);
  }
}