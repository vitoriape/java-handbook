class ContaParesAte20 {
  public static void main(String[] args) {
    
    int contador = 1;
      while(contador <= 20){

        if(contador % 2 == 0){
          System.out.println(contador);
    
        } 
        
          contador++;
        
      }
  }
}

// Para exibir os números ÍMPARES até 20, basta substituir if(contador % 2 == 0){  por  if(contador % 2 != 0){
