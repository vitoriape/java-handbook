import java.util.Scanner;

class SequenciaFibonacci {
   public static void main(String[] args) {

        Scanner kbScanner = new Scanner(System.in);
        System.out.println( "Por favor, informe uma posição para retornar o número na sequência Fibonacci: " );

        int nc = kbScanner.nextInt();

        System.out.println();
        System.out.println( "O " + nc + "º número da sequência Fibonnaci é " + fibo(nc) );
            
    }

   public static int fibo(int n){

       if ( n == 0 ){

           return 0;

       }

        if ( n <= 2 ){

            return 1;
      
        }else{

            return fibo( n - 1 ) + fibo( n - 2 );

        }
    }
}