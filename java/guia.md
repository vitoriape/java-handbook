int = tipo de dado numérico inteiro (sem vírgula)
float = tipo de dado numérico decimal real (com vírgula) ex. 6.555448822148
double = tipo de dado numérico decimal real (com vírgula) ex. 6.5
diferença float e double = float, precisão para armazenar mais números / double, precisão para armazenar menor valor(ambos referentes a casas /números depois da vírgula ou ponto) 
variável com vírgula sempre usar ponto .

quando o tipo for float e o programa entende double, colocar f na após o dado numérico ex:

```java
public class MyClass {
    public static void main(String args[]) {
        
        float nota1 = 6.5f;
        float nota2 = 1.5f;
        
        float media_final = (nota1 + nota2) / 2;
       
           System.out.println(media_final);
    }
}
```

Conversão (Casting) conversão de tipo de dado, quando precisa converter de um tipo de dado para outro tipo de dado, ex. de float para int, ficar atento a perda de precisão 
Sinal de = quer dizer que está atribuindo, fazendo atribuição
= atribuição
== comparação
Sinal de % = mod, resto
Adição unitária ++ pega o mesmo valor e acrescenta 1
Ex. ao invés de: int numero1=10;
			numero 1 = numero1 + 1;
	reduz para: 	numero1++;

+=
Ex. ao invés de: int numero1=10;
			numero 1 = numero1 + 2;
	reduz para: 	numero1 += 2;

