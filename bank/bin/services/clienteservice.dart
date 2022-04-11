import '../database/clienterepository.dart';
import '../models/cliente.dart';

class ClienteService {

  void adicionaCliente(Cliente cliente) {
    DataBaseCliente.addCliente(cliente);
  }

  void adicionarVariosClientes(List<Cliente> listaClientes) {
    for(Cliente cliente in listaClientes) {
      DataBaseCliente.addCliente(cliente);
    }
  }

  void listarClientes() {
    List<Cliente> listaClientes = DataBaseCliente.listarClientes();
    for(var c in listaClientes) {
      print(c);
    }
  }
}
