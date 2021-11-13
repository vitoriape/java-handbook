class Retorna11 {
  public static void main(String[] args) {
    int contador = 0;
    
    while (contador <= 10)
    {
            System.out.println("Eu nunca mais...");

            contador++;
    }
    
  }
}

/*
do while (como se fosse o while invertido)
class Main {
  public static void main(String[] args) {
    int contador = 0;
    
    do
    {
            System.out.println("Eu nunca mais...");

            contador++;
    }while (contador <= 10);
    
  }
}
*/

/*
break (quebra/para contagem)
class Main {
  public static void main(String[] args) {
    int contador;
    for(contador = 0; contador <10; contador ++)
    {
      System.out.println(contador);
      System.out.println("Eu nunca mais...");

      if(contador == 5){
          break;
      }
    }

       System.out.println("Vida que segue");  
  }
}
*/

/*
sem break
class Main {
  public static void main(String[] args) {
    int contador;
    for(contador = 0; contador <10; contador ++)
    {
      System.out.println(contador);
      System.out.println("Eu nunca mais...");

    }

       System.out.println("Vida que segue");  
  }
}
*/

