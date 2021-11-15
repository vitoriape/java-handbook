class ContadorBreak {
  public static void main(String[] args) {

    int contador;

    for(contador = 0; contador <10; contador ++){
      System.out.println(contador);
      System.out.println("Eu nunca mais...");

      if(contador == 5){
        break;

      }
    }

      System.out.println("Vida que segue");  

  }
}

/*
-------------> CONTADOR SEM BREAK <--------------

class ContadorBreak {
  public static void main(String[] args) {

    int contador;

    for(contador = 0; contador <10; contador ++){
      System.out.println(contador);
      System.out.println("Eu nunca mais...");

    }

      System.out.println("Vida que segue");  

  }
}
*/
