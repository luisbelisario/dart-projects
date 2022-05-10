import '../models/conta.dart';

class DataBaseConta {
  static final List<Conta> listaContas = [];

  static addConta(Conta conta) {
    listaContas.add(conta);
  }

  static List<Conta> listarContas() {
    return listaContas;
  }

  static retornaContaPorCpf(String cpf) {
    for (Conta c in listaContas) {
      if (c.cliente.cpf == cpf) {
        return c;
      }
    }
  }

  static excluirConta(Conta conta) {
    listaContas.remove(conta);
  }
}
