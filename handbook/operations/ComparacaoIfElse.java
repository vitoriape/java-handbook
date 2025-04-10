class ComparacaoIfElse {
  public static void main(String[] args) {

    double nota1 = 4.5;
    double nota2 = 1.5;
        
    double media = (nota1 + nota2) / 2;
        
    if(media >= 5){
      System.out.println("Passou !!!");
       
    }else if(media >= 3 && media < 5){
      System.out.println("Exame");

    }else{ 
      System.out.println("Não passou");

    }
  }
}

