import java.util.Locale;
import java.util.Scanner;

public class Operacoes {
    public static void main(String args[]) {
        
        Locale.setDefault(Locale.US);
        Scanner read_tool = new Scanner(System.in);
        
        int A;
        int B;
        
        System.out.printf("Informe o primeiro valor: ");
            A = read_tool.nextInt();
            
        System.out.printf("Informe o segundo valor: ");
            B = read_tool.nextInt();
            
        System.out.printf("\nResultados:\n");
        
            System.out.printf("%d + %d = %3d\n", A, B, (A + B));
            System.out.printf("%d - %d = %3d\n", A, B, (A - B));
            System.out.printf("%d * %d = %3d\n", A, B, (A * B));
            System.out.printf("%d / %d = %3d (divisão inteira)\n", A, B, (A / B));
            System.out.printf("%d / %d = %6.2f (divisão exata)\n", A, B, ((double) A / B));
            System.out.printf("%d * %d = %3d (mod/resto)\n", A, B, (A % B));
     
    }
}
