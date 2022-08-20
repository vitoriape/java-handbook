Guia Java
=========
<!--ts-->
   * [Operadores](#operadores)
      * [Operadores Aritméticos](#operadores-aritméticos)
   * [Tipos Primitivos](#tipos-primitivos)
      * [Casting de Tipos Primitivos](#casting-de-tipos-primitivos)
   * [Classes](#classes)
      * [Objetos](#objetos)
      * [Atributos](#atributos)
      * [Métodos](#métodos)
      * [Modificadores de Acesso](#modificadores-de-acesso)
      * [Tipos de Métodos](#tipos-de-métodos)
   * [Vetores](#vetores)
   * [Começando um Código](#começando-um-código)
      * [Criando uma Classe](#-criando-uma-classe)
      * [Criando um Método](#-criando-um-método)
      * [Inserindo Atributos](#-inserindo-atributos)
      * [Compilando e Executando](#-compilando-e-executando)
   * [Recursividade e Iteratividade](#recursividade-e-iteratividade)
   
      
---

### Operadores

|    Tipo    	   | Sinal 	  | Exemplo 	        |
|:----------:	   |:-----:	  |:-------:	        |
| Atribuição 	   |   `=`   	| `A = 100` 	      |
|    Igual   	   |   `==`  	|  `A == B` 	      |
|  Diferente 	   |   `!=`  	|  `A != B`	        |
|      Maior     |   `>`  	| `A > B` 	        |
| Maior ou Igual |  `>=`  	| `A >= B`	        |
|      Menor     |   `<`  	| `A < B`	          |
| Menor ou Igual |  `<=`  	| `A <= B`	        |
|        E       |  `&&`  	| `A > B && A < C`  |
|       OU       | `\|\|` 	| `A = B \|\| A = C`|

>**Normalmente, os operadores `==` e `!=` só são usados para comparar variáveis de [tipos primitivos]((#tipos-primitivos)), mas é possível usá-los para saber se duas declarações (instâncias) estão apontando para o mesmo [objeto](#objetos)**

---

#### Operadores Aritméticos

|               	| Simples 	| Unitária - Mesmo Valor 	| Unitária - Valor Diferente 	|
|:-------------:	|:-------:	|:----------------------:	|:--------------------------:	|
|     Adição    	|    `+`    	|           `++`           	|             `+=`             	|
|   Subtração   	|    `-`    	|           `--`           	|             `-=`             	|
| Multiplicação 	|    `*`    	|                        	|             `*=`             	|
|    Divisão    	|    `/`    	|                        	|             `/=`             	|
|     Resto     	|    `%`    	|                        	|             `%=`             	|

---

### Dados em Java
Os dados em Java são divididos em "dados por valor", que são os **tipos primitivos**, e em "dados por referência", chamados de **classes**. 💡

#### Tipos Primitivos
Variáveis de tipo primitivo armazenam somente um valor de seu tipo de cada vez, ou seja, assim que outro valor for atribuído a essa variáel, seu valor original é substituído. **Sempre são inicializadas com o valor `0` ou `false` no caso do tipo `boolean`**.

| Declaração 	|        Função       	               |      
|:----:	      |:-------------------:	               |
| char 	      | Armazena caracteres 	               | 
| int         | Armazena números inteiros            |
| short       | Armazena números inteiros de 16 bits |
| long        | Armazena números inteiros de 64 bits |
| float       | Armazena números decimais reais, ou seja, **números de ponto flutuante de maior extensão** com mais precisão. Caso o valor da variável seja do tipo `float` mas o programa interpretá-la como double, basta acrescentar `f` ao final do valor |
| double | Armazena números decimais reais, ou seja, **números de ponto flutuante de menor extensão** com mais precisão |
| byte | |
| boolean | Armazena valores booleanos/lógicos, ou seja, `true` e `false` |

- Exemplos
```java
char dadoChar = 'D';

int dadoInt = 5;

short dadoShort = 32767;

long dadoLong = 9223372036854775807L;

float dadoFloat = 6.5f;

double dadoDouble = 3.59;

byte dadoByte = 127;

boolean dadoBoolean = true;
```

---

#### Casting de Tipos Primitivos
Ato de apontar ao compilador uma **mudança** no tipo de variável de um valor, sempre tomando cuidado com a possível perda de dados. 

>**Valores do tipo `boolean` não aceitam casting**

- Declaração
```java
tipo variável = (tipo) valor;
```

- Exemplo
```java
// Casting double -> float
float Y = (float) 7.0;

// Conversão automática sem casting (int -> float)
float W = 100;

// Casting double -> int
int H = (int) 7.1987;

// Conversão automática sem casting (char -> int)
int A = 'A';
```

>**A _conversão_ ocorre sem a necessidade de _casting_ em alguns casos, como quando se adiciona uma variável de um tipo **menor** que o tipo que receberá esse valor**

---

### Classes
Armazenam as localizações de objetos na memória do computador, sendo que esses objetos podem conter várias variáveis.
**Sempre são inicializadas com o valor `null`**. Elas são "receitas" de um objeto, contendo características e comportamentos, permitindo assim armazenar propriedades e **métodos** dentro dela. 

>**Toda classe possui nome e status de visibilidade (`public`, `private`, `protected`)**

- Exemplo
```java
class nomeClasse {
  // Objetos

  <modificador de acesso> <tipo de retorno> nomeMétodo ([<argumentos>]){
    // Atributos
  
  }
}
```

---

#### Objetos

Os objetos computacionais em Java são características definidas pelas [classes](#classes), através dos quais é possível inicializar [atributos](#atributos) e invocar [métodos](#métodos). Uma classe pode conter vários objetos.

* Exemplo
```java
Carro vectra = newCarro();
Carro palio = newCarro();

// Uma Classe: Carro
// Dois Objetos: vectra e palio
```

---

#### Atributos

Características de um [objeto](#objetos), também conhecidas por variáveis.

---

#### Métodos

Ações que os [objetos](#objetos) podem exercer quando solicitados. Um método em Java equivale a uma função, uma subrotina ou um procedimento em outras linguagens de programação. Diferente do **JavaScript**, em Java não existem **métodos globais**, ou seja, todo método deve ser criado dentro de uma [classe](#classes).

Um método pode ter **0 ou mais parâmetros**. Caso não possua nenhuma parâmetro, é necessário declará-lo e chamá-lo com os **parênteses vazios** `{ }`.

---

#### Modificadores de Acesso
Declarações que controlam o acesso a [Atributos](#atributos) e [Métodos](#métodos), definindo os métodos de quais tipos de classes podem acessar os mesmos. 
Caso nenhum modificador de acesso seja estabelecido, será atribuído um padrão `public`, sendo que as classes devem ser do **mesmo pacote** nesse caso.

| **Modificador**  |        **Acesso**       	                                                                                        |      
|:----:	           |:-------------------:	                                                                                            |
| `public` 	       | Métodos da **própria classe**, **classes derivadas** e **qualquer outra classe** em qualquer outro **pacote**    | 
| `protected`      | Métodos da **própria classe** e **classes derivadas**                                                            |
| `private`        | Métodos da **própria classe**                                                                                    |

---

#### Tipos de Métodos

| **Declaração**   |        **Resultado**       	                          |     
|:----:	           |:-------------------:	                                  |
| `static` 	       | A classe tem o mesmo valor para qualquer objeto        |
| `void`           | O método não retorna nenhum valor                      |
| `main`           | Determina o ponto de início de execução                | 



- Static

1️⃣ Comumente utilizada para criar contadores ou para contar **quantos objetos foram criados em uma classe**    
2️⃣ Ao não atribuir `static` **as variáveis ficam com uma cópia diferente para cada objeto**, o que é mais comum  
3️⃣ Quando invocados, esses métodos `static` executam uma função que não depende de um objeto ou da instância de uma classe  
4️⃣ Consegue **chamar diretamente qualquer método da classe** e também manipular alguns campos da mesma
```java
static {
  System.out.println(“Esta pode ser uma classe interna!”);
}
```


- Void
```java
// Sem retorno
public void soma(int n1, int n2){
  int x = n1 + n2;
  
}

System.out.println(soma( 10, 10 ));
// Retorna um erro de compilação


// Com retorno
public int soma(int n1, int n2){
  int x = n1 + n2;
  
  return x;
}

System.out.println(soma( 10, 10 ));
// Imprime o resultado da soma (20)
```


- Main

1️⃣ Método associado à [classe](#classes) e não a um [objeto](#objetos) específico da classe, dessa forma ele é definido como um **método estático**      
2️⃣ Deve ser um método `public` para permitir sua **execução** a partir da máquina virtual Java   
3️⃣ Não tem **valor de retorno**    
4️⃣ Recebe como argumento um **arranjo de strings** que corresponde aos **parâmetros** que podem ser passados para a aplicação a partir da **linha de comando**  
```java
public static void main(String[] args) {
	
  System.out.println("Este é um programa Java.");
	 
  // Criando um Objeto da Classe ProgramaJava
	  ProgramaJava pj = new ProgramaJava();
	 
	// Chamado os Metódos do Objeto da Classe ProgramaJava
	  pj.primeiroMetodo();
	  pj.segundoMetodo();
    
}	
```

---

### Vetores

- Declarando um vetor
```java
<tipo-de-dado> nome-do-vetor[];
```

- Reservando espaço para seus elementos
```java
nome-do-vetor = new <tipo-de-dado>[número de elementos];
```

- Exemplos
```java
// Vetor para armazenar 10 valores do tipo real
double valorDolar = new double[5];

// Vetor do tipo inteiro com 10 elementos
int vetor10 = new int[10];

// Vetor que armazena o nome dos doze meses do ano
String mesesAno = new String[12];
```

---

### Começando um Código
Na linguagem Java, todo programa roda através de uma [classe](#classes) e, para indicar ao Java que você está criando uma classe, basta usar a sintaxe `class` e usar `{ }` após. Depois de definir a classe, é preciso estabelecer seus comportamentos ([métodos](#métodos), ou seja, o que essa classe irá executar.

#### 1️⃣ Criando uma Classe
```java
class nomeClasse { }
```

>**class = indica ao Java que esta é a declaração de uma [classe](#classes)**

#### 2️⃣ Criando um Método
Para criar a estrutura (assinatura do método), deve-se estabelecer seus parâmetros.  
O nome de um método deve começar com uma letra `a-z/A-Z`, um símbolo de _underscore_ `\_\`, ou um sinal de dólar `$`.   
Os caracteres subsequentes podem incluir os dígitos de `0` a `9`. 
```java
class nomeClasse {

    public static void main(String[] args) {

    }
}
```

>`public` **= tipo de [modificador de acesso](#modificador-de-acesso)**
>>`static` **= método que executa uma função que não depende de um objeto ou da instância de uma classe**
>>>`void` **= método que não retorna nenhum valor**
>>>>`main` **= método estático da classe que marca o início da execução**
>>>>>`(String[] args` **= nome da variável local do método e o tipo de dado, este tipo é um vetor de Strings**

---

#### 3️⃣ Inserindo Atributos
```java
class nomeClasse {

    public static void main(String[] args) {
    
        System.out.println("Hellow World!");
    }
}
```

#### 4️⃣ Compilando e Executando
É necessário possuir um JDK instalado, ou seja, um [kit de desenvolvimento Java](https://www.oracle.com/java/technologies/downloads/#java11).  

**1. Abra o terminal no diretório onde está salvo o arquivo Java**
```bash
C:\Users\pasta-com-arquivo-java>
```

**2. Digite `javac` e o nome do arquivo.java para compilar o arquivo em bytecodes**
```bash
C:\Users\pasta-com-arquivo-java> javac nomeClasse.java
```

**3. Digite `java` e o nome do arquivo para executar a classe**
```bash
C:\Users\pasta-com-arquivo-java> java nomeClasse
```

---

### Recursividade e Iteratividade
A recursividade traduz-se como uma sub-rotina que pode **invocar a si mesma**.  
Enquanto a iteratividade é a **repetição de uma ou mais ações**.

- Iteratividade

Um exemplo de iteratividade é construir um código para calcular fatoriais usando a função `for`:
```javascript
fatorial = 1

for ( var contador = 1 ; contador <= numero ; contador++ ) {
	fatorial = fatorial * contador 
```

- Recursividade

Pensando em um elemento recursivo, é possível construir a mesma dinâmica com uma classe `int fat`:
```java
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
```

---
