Guia JavaScript
=================
<!--ts-->
   * [IF](#if)
   * [FOR](#for)
   * [SWITCH](#switch)
   * [PROGRAMAÇÂO ESTRUTURADA](#programaçâo-estruturada)
   * [VETORES](#vetores)
   * [MATRIZES](#matrizes)
<!--te-->

---

### IF

Função que estipula condições para uma determinada execução no código.

```javascript
if( N > M ){
  N = resultado_1
  
}else if( N < M ){
  N = resultado_2
    
}else( N = M ){
  alert( "Nenhum resultado!" )
    
}
```

---

### FOR

Função que cria um loop que consiste em três expressões opcionais, dentro de parênteses e separadas por ponto e vírgula, seguidas por uma declaração ou uma sequência de declarações executadas em sequência.

- Estrutura

```javascript
for ( variável auxiliar ; condição de continuidade ; instrução )
```

- Exemplo

```javascript
for ( var counter = 0 ; counter < 9 ; counter++ )
```

---

### SWITCH

Função que avalia uma expressão e combina o valor da mesma para uma cláusula case, executando as instruções associadas ao CASE. O BREAK impede o loop.

- Exemplo

```javascript
switch ( ){ 
  case 1: 
    alert( "opção 1!" ) 
  
  break;

  default: 
    alert( "nenhuma opção para mostrar!") 
} 
```

---

### PROGRAMAÇÂO ESTRUTURADA

Programas de maior complexidade são organizados em procedimentos e funções, permitindo uma melhor organização do código. Variáveis globais podem ser utilizadas ao longo do script, enquanto as locais só podem ser chamadas dentro do bloco de instrução onde foram declaradas.

- Variáveis Globais

```javascript
var nome-da-variável
```

- Variáveis Locais

```javascript
let nome-da-variável
```

---

### VETORES

Armazenam conjunto de dados em uma dimensão. É possível verificar o número de elementos de um vetor, bem como percorrrer os dados do mesmo para acessar elementos específicos.

- Declaração

```javascript
var vetor = []
```

- Verificação

```javascript
vetor.lenght
```

- Acesso

```javascript
vetor[índice]
```

---

### MATRIZES

Estrutura de dados bidimensional cuja abstração é feita através de linhas e colunas.

- Declaração

```javascript
var matriz = [[],[],[]]
```

---
