import java.util.Scanner;

class VetorExemplo {
    public static void main(String[] args) {
       //-----> Cria um vetor de valores inteiros <-----

        Scanner kbScanner = new Scanner(System.in);  // <Cria um objeto kbScanner que será usado como input de dados>
        System.out.println( "Por favor, informe a quantidade valores a serem inseridos no nosso vetor: " );

        int quantidadeElementos = kbScanner.nextInt();  // <Pede que o usuário defina qual a quantidade de elementos que serão armazenados no vetor>


        if ( quantidadeElementos > 0 ) {

           int[] vetorPTI = new int[quantidadeElementos];  // <Declara o vetor>

           for (int contaInputs = 0 ; contaInputs < quantidadeElementos ; contaInputs++) {
               System.out.println(contaInputs + "º Elemento:");

               vetorPTI[contaInputs] = kbScanner.nextInt();  // <Define os elementos do vetor pelos inputs do usuário>

            }

           System.out.println( " " );

           System.out.println( "A maior diferença entre os elementos do nosso vetor é: ");
           System.out.println(diferencaValores(vetorPTI));

           System.out.println( " " );

           System.out.println( "O vetor está em ordem crescente: ");
           System.out.println(testeCrescente(vetorPTI));

        }else {
           System.out.println( "Insira um valor válido!" );   // <Não permite que o usuário declare 0 como valor no vetor>
            
        }
    }

    public static int diferencaValores(int vetorPTI[]) {
       //-----> Calcula e retorna o valor da maior diferença entre dois elementos distintos no vetor <-----

        int maiorValor = vetorPTI[0];
        int menorValor = vetorPTI[0];

        for ( int valoresVetor = 1 ; valoresVetor < vetorPTI.length ; valoresVetor++) {

            if ( vetorPTI[valoresVetor] > maiorValor ) {
                maiorValor = vetorPTI[valoresVetor];

            }
            
            if ( vetorPTI[valoresVetor] < menorValor ){
                menorValor = vetorPTI[valoresVetor];

            }
        }

        return maiorValor - menorValor;

    }

    public static boolean testeCrescente(int vetorPTI[]) {
        //-----> Verifica se o vetor está em ordem crescente, retornando true caso sim e false caso não <-----

        for ( int ordemElementos = 1 ; ordemElementos < vetorPTI.length ; ordemElementos++ ) {

            if ( vetorPTI[ordemElementos] < vetorPTI[ordemElementos - 1] ) {

                return false;

            }

        }

        return true;

    }
}