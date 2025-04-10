class ListaVetor {
  public static void main( String[] args ) {

    String[] lista={ "Mel", "Gaia", "Tonica", "Mustafa", "Ronda" };

    exibirLista(lista);

  }

  public static void exibirLista( String[] x ){

    for( int i = 0 ; i < x.length ; i++ ){

    System.out.print( x[i] + " ");

    }
  }
}
