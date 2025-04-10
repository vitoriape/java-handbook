import java.util.Scanner;

class CalcularFatorial {
   public static void main(String[] args) {

        Scanner kbScanner = new Scanner(System.in);
        System.out.println( "Por favor, informe o número para calcular seu fatorial: " );

        int nc = kbScanner.nextInt();


        System.out.println();
        System.out.println( "O fatorial de " + nc + "é " + fat(nc) );
            
    }

   public static int fat(int n){

        if ( n <= 1 ){

            return 1;
      
        }else{

            return n * fat (n - 1);

        }
    }
}