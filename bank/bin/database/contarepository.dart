import '../models/Conta.dart';

class DataBase {

  static late List<Conta> listaContas;

  static addConta(Conta conta) {
    listaContas.add(conta);
  }

  static List<Conta> listarContas() {
    return listaContas;
  }
}