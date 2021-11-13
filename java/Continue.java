class Continue {
  public static void main(String[] args) {
    int contador;
    for(contador = 0; contador <10; contador ++)
    {

      if(contador == 5){
        continue;
      }
      
      System.out.println(contador);
      System.out.println("Eu nunca mais...");

    }

       System.out.println("Vida que segue");  
  }
}
