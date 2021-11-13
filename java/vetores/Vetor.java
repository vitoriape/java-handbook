/*
    Vetor Java
    ----------------
*/

import java.util.Scanner;

public class Vetor {
    public static void main(String args[]) {

        Scanner keyboard_input = new Scanner(System.in);

// -----[] Verifica qual a quantidade de elementos serão armazenados no vetor &
//              Lê uma sequência de números inteiros (number_sequence) informados pelo usuário &
//                      Armazena a sequência de números inteiros (N) no vetor (vector) []-----

        System.out.println( "Por favor, informe a quantidade de valores a serem inseridos no nosso vetor: " );
            int N = keyboard_input.nextInt();
            int[] vector = new int[N];

            for ( int i = 0 ; i < N ; i++ ) {
            int number_sequence = keyboard_input.nextInt();

            vector[i] = number_sequence;

        }

/*
    -----[] Calcula e retorna o valor da maior diferença entre dois elementos distintos no vetor []-----
*/

        System.out.println( "diferença: " + DiferencaElemento ( vector, N ) );
        System.out.println();
        if ( Crescente ( vector, N ) == 1) {
            System.out.println( "Verdadeiro!" );
        } else
            System.out.println( "Falso!" );
        keyboard_input.close();

    }

/*
    ------[] Verifica se o vetor está em ordem crescente &
            Retorna TRUE se ordem = crescente | Retorna FALSE se ordem = decrescente []-----
*/

    static int DiferencaElemento (int[] vector, int N) {
        int diferenca = 0;
        int maior = vector[0];
        for (int i = 0; i < N; i++) {
            if (vector[i] > maior) {
                maior = vector[i];

            }
        }

        int menor = vector[0];
        for ( int i = 0 ; i < N ; i++ ) {
            if ( vector[i] < menor ) {
                menor = vector[i];

            }
        }

        return diferenca = maior - menor;

    }

    static int Crescente ( int[] vector, int N ) {
        for ( int i = 1 ; i < N ; i++ ) {
            if ( vector[i - 1] > vector[i] ) {
                return 0;

            }
        }

        return 1;

    }
}