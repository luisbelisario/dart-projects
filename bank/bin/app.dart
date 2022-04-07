import 'models/cliente.dart';
import 'models/conta.dart';

void main(List<String> arguments) {

  Cliente c1 = Cliente("Ismael", "4444444");
  print(c1);
  Conta ct1 = Conta("123", "12345", c1, 100.00);
  print(ct1.cliente.nome);
}
