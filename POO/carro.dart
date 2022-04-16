void main() {
  
  Carro c1 = Carro.comBancoCouro(marca: 'Ferrari',
                                modelo: 'Enzo',
                                cor: 'Vermelha',
                                ano: 2007,
                                km: 500.45,
                                preco: 10000000000);
  
  print(c1);
  
}

class Carro {
  
  String marca;
  String modelo;
  String cor;
  int ano;
  double km;
  double preco;
  bool arCondicionado = true;
  bool bancoCouro = false;
  
  
  Carro({required this.marca, 
        required this.modelo,
        required this.cor,
        required this.ano, 
        required this.km,
        required this.preco});
  
  Carro.semArCondicionado({required this.marca, 
      required this.modelo,
      required this.cor,
      required this.ano, 
      required this.km,
      required this.preco}) {
    arCondicionado = false;
  }
  
  Carro.comBancoCouro({required this.marca, 
      required this.modelo,
      required this.cor,
      required this.ano, 
      required this.km,
      required this.preco}) {
    bancoCouro = false;
  }
  
  @override
  toString() {
    return "$marca - $modelo - $ano - $preco";
  }
}