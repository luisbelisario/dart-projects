void main() {
  Casa c1 = Casa(23.5, qtdQuartos: 3, qtdBanheiros: 2);
  print(c1.tamanho);
  print(c1.piscina);
  
  Casa c2 = Casa.comPiscina(34.2, qtdQuartos: 4, qtdBanheiros: 3);
  print(c2.tamanho);
  print(c2.piscina);
  
  Casa c3 = Casa.comPiscinaEChurrasqueira(100.8, qtdQuartos: 6, qtdBanheiros: 4);
  print(c3.tamanho);
  print(c3.piscina);
  print(c3.churrasqueira);
}


class Casa {
  
  double tamanho;
  int qtdQuartos;
  int qtdBanheiros;
  bool piscina = false;
  bool churrasqueira = false;
  
  Casa(this.tamanho, {required this.qtdQuartos, 
       required this.qtdBanheiros});
  
  Casa.semPiscina(this.tamanho, 
                  {required this.qtdQuartos, 
                   required this.qtdBanheiros}) {
    piscina = false;
  } 
  
  Casa.comPiscina(this.tamanho, 
                  {required this.qtdQuartos, 
                   required this.qtdBanheiros}) {
    piscina = true;
  }
  
  Casa.comPiscinaEChurrasqueira(this.tamanho,
                                {required this.qtdQuartos, 
                                 required this.qtdBanheiros}) {
    piscina = true;
    churrasqueira = true;
  }
}