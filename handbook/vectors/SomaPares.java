import java.util.Scanner;

class SomaPares {
    public static void main(String[] args) {

        Scanner kbScanner = new Scanner(System.in);//Cria um objeto kbScanner que será usado como input de dados

        System.out.println( "Por favor, informe a quantidade de valores a serem inseridos no nosso vetor: " );

        int quantidadeElementos = kbScanner.nextInt();//Pede que o usuário defina qual a quantidade de elementos que serão armazenados no vetor

        int somaPares = 0;//Declara a soma dos valores


        if ( quantidadeElementos > 0 ) {

           int[] vetorSoma = new int[quantidadeElementos];//Declara o vetor

           for (int contaInputs = 0 ; contaInputs < quantidadeElementos ; contaInputs++) {
               System.out.println(contaInputs + "º Elemento:");

               vetorSoma[contaInputs] = kbScanner.nextInt();//Define os elementos do vetor pelos inputs do usuário

               if (vetorSoma[contaInputs] %2 == 0) {
			            somaPares = somaPares + vetorSoma[contaInputs];//Soma apenas os elementos pares do vetor (resultado da divisão por 2 = 0)

              }
           }

           System.out.println( " " );
           System.out.println( "A soma dos números pares contidos no vetor é: " + somaPares);

           kbScanner.close();

        }else {
           System.out.println( "Insira um valor válido!" );//Não permite que o usuário declare 0 como valor no vetor
            
        }
    }
}