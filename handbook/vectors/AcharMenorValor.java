class AcharMenorValor {
  public static void main(String[] args) {

    double[] vetor={ 9.4, 3.6 , 5.9 , 5.5};

    System.out.println( "Menor=" + determinarMenor(vetor) );

  }

  public static double determinarMenor(double[] vetor){

    double menor = vetor[0];

    for(int i=1 ; i < vetor.length ; i++){

     if(menor > vetor[i]){

      menor = vetor[i];

     }
    }

    return menor;

  }
}
