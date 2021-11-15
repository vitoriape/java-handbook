import java.util.Locale;
import java.util.Scanner;

class Operacoes {
  public static void main(String args[]) {
        
    Locale.setDefault(Locale.US);
    Scanner kbScanner = new Scanner(System.in);
        
      int A;
      int B;
        
      System.out.printf("Informe o primeiro valor: ");
        A = kbScanner.nextInt();
            
      System.out.printf("Informe o segundo valor: ");
        B = kbScanner.nextInt();

            
      System.out.printf("\nResultados:\n");
        
      System.out.printf("%d + %d = %3d\n", A, B, (A + B));
      System.out.printf("%d - %d = %3d\n", A, B, (A - B));
      System.out.printf("%d * %d = %3d\n", A, B, (A * B));
      System.out.printf("%d / %d = %3d (divisão inteira)\n", A, B, (A / B));
      System.out.printf("%d / %d = %6.2f (divisão exata)\n", A, B, ((double) A / B));
      System.out.printf("%d * %d = %3d (mod/resto)\n", A, B, (A % B));
  
  }
}
