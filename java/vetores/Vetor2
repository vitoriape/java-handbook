import java.util.Scanner;

public class Vetor2 {

   public static void main(String[] args) {

       Scanner scanner = new Scanner(System.in);

       int N = scanner.nextInt();

       if (N > 0) {

           int[] vetor = new int[N];

           for (int i = 0; i < N; i++) {

               vetor[i] = scanner.nextInt();

           }

           System.out.println();

           System.out.println(maiorDiferenca(vetor));

           System.out.println(ordemCrescente(vetor));

       }

   }

   public static int maiorDiferenca(int vetor[]) {
int maior = vetor[0], menor = vetor[0];
for (int i = 1; i < vetor.length; i++) {

if (vetor[i] > maior) {
maior = vetor[i];
}
if (vetor[i] < menor){
menor = vetor[i];
}
}
return maior - menor;
}

   public static boolean ordemCrescente(int vetor[]) {

       for (int i = 1; i < vetor.length; i++) {

           if (vetor[i] < vetor[i - 1]) {

               return false;

           }

       }

       return true;

   }

}
