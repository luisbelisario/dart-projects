import '../models/cliente.dart';

class DataBaseCliente {
  static final List<Cliente> listaClientes = [];

  static addCliente(Cliente cliente) {
    listaClientes.add(cliente);
  }

  static List<Cliente> listarClientes() {
    return listaClientes;
  }
}
