import 'models/cliente.dart';
import 'models/conta.dart';
import 'services/clienteservice.dart';
import 'services/contaservice.dart';

void main(List<String> arguments) {

  ClienteService clienteService = ClienteService();
  ContaService contaService = ContaService();

  Cliente c1 = Cliente("Ismael", "123");
  Cliente c2 = Cliente("Fernando", "456");
  Cliente c3 = Cliente("Berg", "666");
  List<Cliente> listaClientes = [c1, c2, c3];
  clienteService.adicionarVariosClientes(listaClientes);

  Conta ct1 = Conta("0001", "45678", c1, 100.00);
  Conta ct2 = Conta("0001", "45679", c1, 1000.00);
  Conta ct3 = Conta("0001", "45680", c3, 10000.00);
  List<Conta> listaContas = [ct1, ct2, ct3];
  contaService.adicionarVariasContas(listaContas);

  clienteService.listarClientes();
  contaService.listarContas();

  contaService.depositar("666", 1000000);
  contaService.sacar("123", 1000000);
  contaService.listarContas();

  contaService.sacar("666", 1);
  contaService.listarContas();
}
