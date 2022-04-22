Guia SQL
=================
<!--ts-->
* [Álgebra Relacional](#algebra-relacional)
  * [Operações de Algebra Relacional](#operações-de-algebra-relacional)
    * [União](#união)
    * [Interseção](#interseção)
    * [Diferença](#diferença)
    * [Produto Cartesiano](#produto-cartesiano)
    * [Projeção](#projeção)
    * [Junção](#junção)
  * [Operações Específicas de Banco de Dados](#operações-específicas-de-banco-de-dados)
    * [Data Definition Language (DDL)](#data-definition-language-ddl)
      * [Criando Tabelas](#criando-tabelas)
      * [Excluindo Tabelas](#excluindo-tabelas)
      * [Alterando Tabelas](#alterando-tabelas)
    * [Data Manipulation Language (DML)](#data-manipulation-language-dml)
      * [Selecionando o Banco](#selecionando-o-banco)
      * [Selecionando Todos os Dados](#selecionando-todos-os-dados)
      * [Selecionando Dados com Filtros](#selecionando-dados-com-filtros)
      * [Criando Hélias](#criando-hélias)
      * [Filtrando Campos na Consulta](#filtrando-campos-na-consulta)
      * [Filtrando Campos: Condicional AND](#filtrando-campos-condicional-and)
      * [Filtrando Campos: Condicional OR](#filtrando-campos-condicional-or)
      * [Filtrando Campos: Condicional NOT](#filtrando-campos-condicional-not)
      * [Ordenando Dados](#ordenando-dados)
      * [Ordenando Dados: ASC e DESC](#ordenando-dados-asc-e-desc)
    * [Data Control Language (DCL)](#data-control-language-dcl)
      * [Criando Usuários](#criando-usuários)
  * [Operações de Funções Agregadas](#operações-de-funções-agregadas)
    * [Contando Registros](#contando-registros)
    * [Calculando Registros](#calculando-registros)
  ---
* [Banco de Dados e SGBD](#banco-de-dados-e-sgbd)
  * [Ciclo de Valoração de Dados](#ciclo-de-valoracao-de-dados)
  * [SGBD](#sgbd)
* [Projeto Lógico](#projeto-lógico)
  * [Representação](#representação)
  * [Classificação](#classificação)
  * [Cardinalidade](#cardinalidade)
  * [Mapeamento de Cardinalidade](#mapeamento-de-cardinalidade)
* [Normalização](#normalização)
  * [Dependência Funcional](#dependência-funcional)
  * [Dependência Transitiva](#)
  * [Primeira Forma Normal (1FN)](#primeira-forma-normal-1fn)
  * [Segunda Forma Normal (2FN)](#segunda-forma-normal-2fn)
  * [Terceira Forma Normal (3FN)](#terceira-forma-normal-3fn)
* [Controle de Concorrência: ACID]()
  * [Bloqueio Compartilhado]
  * [Bloqueio Exclusivo]

<!--te-->

---
---

## **Algebra Relacional**
Uma base de dados relacional é uma coleção de tabelas de duas dimensões. O modelo relacional tem como base a Álgebra Relacional e concatena quatro elementos básicos:

- **Tabelas**
- **Colunas**
- **Linhas**
- **Campos**

Esses elementos são manipulados comumente através da `Linguagem SQL`, uma linguagem **declarativa** orientada a **banco de dados**. O manejo desses elementos geram:

- **Relações entre os objetos**

- **Operadores que criam novas relações**

- **Operações que manipulam relações inteiras**

- **Resultados das operações, ou seja, as novas relações que podem ser manipuladas por operações de teoria dos conjuntos (álgebra relacional) e funções agregadas**

---

## **Operações de Algebra Relacional**
Operações relacionadas à Teoria dos Conjuntos.

### **União**
`R1 U R2`  
Considerando dois conjuntos de dados A e B que possuem o mesmo tipo de tupla, ou seja:

* **Possuem o mesmo número de atributos**
* **Os atributos correspondentes tem o mesmo domínio**

Então, o resultado da UNIÃO entre esses conjuntos é um conjunto C com todas as tuplas de A e B, sem repetir os dados.

---

### **Interseção**
`R1 ∩ R2`  
Produz uma relação que inclui as tuplas em comum de R1 e R2, sendo que os dois conjuntos possuem o mesmo tipo de tupla.

- Selecionando uma tupla de dados entre bancos distintos:
```sql
SELECT *
FROM nome_do_banco.primeira_tabela AS p
INNER JOIN nome_do_banco.segunda_tabelas AS s
ON p.chave_primeira_tabela = s.chave_segunda_tabela
```

---

### **Diferença**
`R1 - R2`  
Produz uma relação que inclui todas as tuplas de R1 que não constam em R2. Neste caso os dois conjuntos também possuem o mesmo tipo de tupla.

- Selecionando sequências de dados exclusivas da primeira tabela + interseção de dados:
```sql
SELECT *
FROM nome_do_banco.primeira_tabela AS p
LEFT JOIN nome_do_banco.segunda_tabela AS s
ON p.chave = s.chave
```


- Selecionando sequências de dados exclusivas da segunda tabela + interseção de dados:
```sql
SELECT *
FROM nome_do_banco.primeira_tabela AS p
RIGHT JOIN nome_do_banco.segunda_tabela AS s
ON p.chave = s.chave
```

- Selecionando sequências de dados exclusivas da primeira tabela (RIGHT EXCLUDING JOIN):
```sql
SELECT *
FROM nome_do_banco.primeira_tabela AS p
RIGHT JOIN nome_do_banco.segunda_tabela AS s
ON p.chave = s.chave
WHERE p.chave IS NULL
```

- Selecionando sequências de dados exclusivas da segunda tabela (LEFT EXCLUDING JOIN):
```sql
SELECT *
FROM nome_do_banco.primeira_tabela AS p
LEFT JOIN nome_do_banco.segunda_tabela AS s
ON p.chave = s.chave
WHERE s.chave IS NULL
```

---

### **Produto Cartesiano**
`R1 X R2`	
Esta relação possui os atributos de R1 e de R2, incluindo como tuplas todas as possíveis combinações de tuplas de R1 e R2.

---

### **Projeção**
Produz uma nova relação com apenas alguns atributos de R e exclui possíveis tuplas duplicadas.

- Eliminando dados duplicados:
```sql
SELECT
	DISTINCT(primeiro_campo)
FROM nome_do_banco.nome_da_tabela
ORDER BY primeiro_campo
```

- Distinguindo strings:
```sql
SELECT *
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo LIKE 'Palavra%'
```

>**I. Localiza dados que possuam ou não um dado de texto específico. É um comando `case sensitive`.**

>**II. O `%` indica a posição do critério de texto em relação ao valor do campo.**

>**III. Traz todos os campos que possuem `"Palavra"` antes do restante dos dados**

>**IV. Se = `%Palavra`, traria todos os campos onde "Palavra" está no final do texto**

>**V. Caso = `%Palavra%`, traria qualquer dado que possua "Palavra" no meio dos dados**

---

### **Junção**
Para que funcione, a quantidade de campos do SELECT e os tipos precisam estar parametrizados.

- Unindo seleções:
```sql
SELECT a.tabela AS campo_exemplo,
	a.tabela2 AS campo_exemplo2
FROM nome_do_banco.primeira_tabela a
UNION
SELECT b.tabela3 AS exemplo,
	b.tabela4 AS exemplo2
FROM nome_do_banco.segunda_tabela b
```

>---

## **Operações Específicas de Banco de Dados**
Incluem a seleção, filtragem e ordenação dos dados. As **tabelas** no SGBD podem ser criadas **a qualquer momento**, ficando disponíveis para **CRUD** logo após sua criação. Um banco de dados só deve ser utilizado para CRUD:

```sql 
Create  
Read
Update  
Delete
```

---

### **Data Definition Language (DDL)**
Comandos usados para estruturar, criar, modificar e remover tabelas ou databases, gerenciando objetos.

```sql
create
alter
drop
```

### **Criando Tabelas**
Um padrão comum adotado para nomes de tabelas é o `tb_nome`. O nome das colunas é de livre escolha, já o seu tipo pode ser `numérico` ou `não numérico` e o seu tamanho está relacionado a sua alocação na memória do banco.
Quanto as restrições, sua classificação se dá através de `NULL` E `NOT NULL` e sua integridade pelo comando `CONSTRAINT`, para primary key `PK` e foreing key `FK`.

```sql
CREATE TABLE tb_nome_da_entidade  
(  
      nome_da_coluna TIPO(TAMANHO) [RESTRIÇÕES],    
      entidade1 VARCHAR(40) NOT NULL,  
      entidade2 INTEGER NOT NULL,  
      entidade3 DATE,
      CONSTRAINT tb_nome_da_entidade_pk PRIMARY KEY (entidade1),
      CONSTRAINT tb_nome_da_entidade_fk FOREIGN KEY (entidade2) REFERENCES tb_entidade2(entidade2)
);
```

### **Excluindo Tabelas**
```sql
DROP TABLE nome_da_tabela
```

### **Alterando Tabelas**
```sql
ALTER TABLE nome_da_tabela  
ALTER TABLE nome_da_tabela ADD nome_campo TIPO  
ALTER TABLE nome_da_tabela DROP COLUMN** nome_campo
```

---

### **Data Manipulation Language (DML)**
Usada para recuperar, inserir, remover e alterar dados inativos na database.

```sql
select  
insert  
update  
delete
```

A clásula `WHERE` é usada para filtrar os registros, sendo seu uso SEMPRE RECOMENDÁVEL. Para atualizar apenas um registro, usar a clausula na chave primária.

Condições
---------

Igual =  
Maior >  
Menor <  
Maior igual >=  
Menor igual <=  
Diferente <>

---

### **Selecionando o Banco**
```sql
USE nome_do_banco
```

### **Selecionando Todos os Dados**
```sql
SELECT *
FROM nome_do_banco.nome_da_tabela
```

### **Selecionando Dados com Filtros**
```sql
SELECT *
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
```

### **Criando Hélias**
Na seleção de dados, é possível criar hélias, ou seja, apelidos para os campos que existem nas tabelas do banco.
```sql
SELECT 
	primeiro_campo as novo_nome_do_campo
FROM nome_do_banco.nome_da_tabela

```

### **Filtrando Campos na Consulta**
```sql
SELECT 
	primeiro_campo,
	segundo_campo,
	terceiro_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
```

### **Filtrando Campos: Condicional AND**
```sql
SELECT
	primeiro_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
AND nome_outro_campo = 'Outro critério'
```

### **Filtrando Campos: Condicional OR**
```sql
SELECT
	primeiro_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
OR nome_outro_campo = 'Outro critério'
```

### **Filtrando Campos: Condicional NOT**
```sql
SELECT
	primeiro_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
AND nome_outro_campo != 'Outro critério'
```

### **Ordenando Dados**
```sql
SELECT 
	primeiro_campo as novo_nome_do_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
ORDER BY novo_nome_do_campo, nome_do_campo
```

### **Ordenando Dados: ASC e DESC**
```sql
SELECT
	primeiro_campo
FROM nome_do_banco.nome_da_tabela
WHERE nome_do_campo = 'Critério'
ORDER BY primeiro_campo DESC
```	
	
---
 
### **Data Control Language (DCL)**
Comandos utilizados pelo administrador para controlar o acesso dos usuários.

```sql
grant
revoke
```

### **Criando Usuários**
```sql
CREATE USER 'myapp'@'%' IDENTIFIED BY 'senha'
  WITH MAX_QUERIES_PER_HOUR 200
        MAX_UPDATES_PER_HOUR 100
        MAX_CONNECTIONS_PER_HOUR 50
        MAX_USER_CONNECTIONS 30;
```

>---

## **Operações de Funções Agregadas**
Algumas operações do SGBD não podem ser executadas em função da Álgebra Relacional e envolvem **funções matemáticas agregadas**. São elas:

- **SUM**
- **AVG**
- **MAX**
- **MIN**
- **COUNT**

Exemplos
--------

### **Contando Registros**
```sql
SELECT count(*)
FROM nome_do_banco.nome_tabela
```


### **Calculando Registros**
```sql
SELECT sum(tabela_numerica)
FROM nome_do_banco.nome_tabela
```

```sql
SELECT avg(tabela_numerica)
FROM nome_do_banco.nome_tabela
```

```sql
SELECT min(tabela_numerica)
FROM nome_do_banco.nome_tabela
```

```sql
SELECT max(tabela_numerica)
FROM nome_do_banco.nome_tabela
```
		   
---
---
---
---

## **Banco de Dados e SGBD**
### **Ciclo de Valoração de Dados**
Transformação dos dados em informações úteis, depois agregando inteligência e gerando tecnologia e conhecimento. Um **banco de dados**, no qual esses dados são armazenados, se baseia nas **entidades do mundo real** que compõem o **sistema de informação**.

📚 **Modelo Relacional:** Responsável por organizar os dados afim de transformar os mesmos em informação, baseando-se em alguns pilares como:

- **Registro**  
Armazenamento dos dados de forma ordenada, como uma "ficha" ou linha.

- **Tabela**
Estrutura de dados sem preenchimento.

- **Campo**
Espaços de preenchimento da tabela.

---

- **Chave**
Atributo ou conjunto de atributos que identifica uma **única entidade** dentro de um **conjunto de entidades**. Uma chave deve ser **mínima**, ou seja, **nenhum atributo** que a compõe poderá ser retirado da mesma.

📚 **Primary Key:** A **chave primária** (candidata) é um indexador da unidade dos dados, não se repetindo em nenhum registro e unificando cada registro em particular.  

📚 **Foreign Key:** A **chave estrangeira** é um atributo usado para relacionar entidades, um campo de referência na tabela filha que relaciona dados da tabela mãe.

---

- **Relacionamento**
Maneira pela qual os dados entre diferentes registros e tabelas se comunicam, gerando informações. Um relacionamento entre entidades **define existência de registro**, por exemplo, não existe um professor sem alunos ou produto sem pedido.

**Exemplo :one: :** 
Chave primária = **CPF**
**Não é possível criar um registro com um CPF já cadastrado no banco.**

**Exemplo :two: :** 
Chave estrangeira = **Cliente**
**Pode-se relacionar um número do cliente com vários pedidos diferentes.**

É incomum que haja um **relacionamento ternário** entre entidades, considerando que a modelagem segue a **teoria dos conjuntos**, mas pode acontecer.

---

📚 **Restrições de Integridade**

>**Restrição de Unicidade de Chave**
Uma chave primária não pode ter o mesmo valor em duas **tuplas distintas** da mesma relação.

>**Restrição de Integridade da Entidade**
Uma chave primária não pode ter valor **nulo** em nenhuma tupla da relação.

>**Restrição de Integridade Referencial**
Usada para manter a **consistência** entre tuplas de uma relação. Relaciona-se com o conceito de chave estrangeira na medida que **o atributo de uma entidade não pode existir sem a entidade**. Por exemplo, uma certidão de ônus sem imóvel.


📚 **Tuplas** = (sequência de dados e/ou elementos, lista de registros) 

---

- **Índice:** 
Critério ou protocolo de organização dos registros, otimizando a **busca**. Um exemplo seria um fluxo de caixa cujo índice é o período ou data.

---

---

### **SGBD**
O **Sistema de Gerenciamento de Banco de Dados** é o sistema de software responsável pela gestão dos bancos de dados. É uma **coleção de dados inter-relacionados** e um conjunto de mecanismo de acesso aos mesmos.

📚 **Arquitetura em Camadas:** Todo SGBD divide-se em:

- **Nível Físico:**
Esquema interno de armazenamento em disco.

- **Nível Lógico:**
Abstração dos dados e projeção do esquema registro-tabela-etc.

- **Nível View:**
Implementação do modelo elaborado no nível lógico trabalhando com linguagens.

---
---

## **Projeto Lógico**

>**Problema > 
Nível descritivo > 
Nível conceitual > 
Nível computacional > 
Nível físico**

---

### **Representação**
Concatenar quais entidades do mundo real serão representadas no projeto e descrever suas **características** em uma linguagem intermediária. A **entidade** é uma representação de um elemento real. Um **elemento** do conjunto de entidades é também uma entidade, identificada por características específicas, os **atributos**.

>**Atributo <> Valor**

* Atributo = **cor**
* Valor = **vermelho**

---

### **Classificação**
Um atributo **não possui outros atributos**. Se um atributo possui muitas ramificações de valores no banco, ele deve ser uma **entidade** e se relacionar com outras. Um atributo pode ser classificado como:

📚 **Simples**
Um **atributo simples** não é passível de divisão em partes
**Exemplo:** Nome de um cliente

📚 **Composto**

Um **atributo composto** é divido em partes
**Exemplo:** Nome completo de um cliente, incluindo sobrenomes

* Considera a capacidade de decompor um campo, sendo a diferença fundamental a forma de modelar.

---

📚 **Monovalorado**  
Um **atributo monovalorado** possui apenas um valor para a entidade de referência
**Exemplo:** Número da casa de um cliente

📚 **Multivalorado**

Um **atributo multivalorado**  pode assumir diversos valores
**Exemplo:** Telefone para contato de um cliente

---

📚 **Nulo**
**Pode ou não** possuir um valor. Seu valor também pode ser **desconhecido**.
**Exemplo:** Nome dos dependentes de um cliente

* Para o usuário, o campo é identificado como opcional.

📚 **Derivado**
Seu valor pode ser **derivado de outros atributos**.
**Exemplo:** Consolidação dos campos **data de contratação do serviço** e **data atual** para gerar um atributo **tempo de uso do serviço**.

---

📚 **Modelo Entidade Relacionamento (MER)**
Padrão que elucida o funcionamento de um modelo de dados que, por sua vez, representa entidades, seus atributos e suas relações.

>**O **lollipop** preenchido é um atributo que representa um campo chave (primária).**

>**O losango representa a relação entre as entidades**

---

### **Cardinalidade**
Representação do **mínimo** e **máximo** da relação entre entidades.

📚 **Estrutura:**
(mínimo, máximo)

📚 **Exemplo:**
(0, N)

---

### **Mapeamento de Cardinalidade**
Linha direcional em uma teoria dos conjuntos que delimita o **tipo de cardinalidade**.

**(a)** Um para um
**(b)** Um para muitos
**(c)** Muitos para um
**(d)** Muitos para muitos

---
---

## **Normalização**
Organização e divisão das tabelas do banco de dados visando a maior eficiência possível, diminuindo a redundância e permitindo a evolução do banco com a integridade dos dados. Esse processo se dá através de regras chamadas **formas normais**. Os principais conceitos envolvidos na normatização são as relações e as chaves (candidatas, primárias e estrangeiras). As relações podem ser entendidas como um equivalente matemático para **tabela**.

`O foco da normalização é chegar em uma dependência funcional irredutivel à esquerda. Vai da Primeira Forma Normal (1FN) até a Quinta (5FN)`

### **Dependência Funcional (DF)**
Relação de determinância e dependência entre atributos.

<table><thead><tr><th>Atributo X</th><th>Atributo Y</th></tr></thead><tbody><tr><td>Determinante</td><td>Dependente</td></tr><tr><td>CPF</td><td>Nome</td></tr><tr><td colspan="2">Y = f(X)</td></tr><tr><td colspan="2">f(CPF) = Nome</td></tr></tbody></table>

`CPF -> Nome`

>---

<table><thead><tr><th colspan="3">Classificação de Dependência Funcional</th></tr></thead><tbody><tr><td>Tipo</td><td>Descrição</td><td>Exemplo</td></tr><tr><td>Dependência Funcional Total</td><td>Ao remover qualquer atributo A de um componente X a dependência deixa de existir</td><td>AB -&gt; C, D<br>{cnpj, razão social} -&gt; nome fantasia, nire<br>AB - cnpj<br>dependência de nire e nome fantasia deixa de existir</td></tr><tr><td>Dependência Funcional Parcial</td><td>Um atributo A pode ser removido do componente X sem alterar a dependência</td><td>AB -&gt; C, D<br>{matrícula, inscrição municipal} -&gt; rgi, iptu<br>inscrição municipal -&gt; iptu<br>iptu não depende de matrícula</td></tr><tr><td>Dependência Funcional Trivial</td><td>Um determinante com mais de um atributo pode determinar seus próprios membros quando isolados</td><td>{banco, agência} -&gt; banco</td></tr><tr><td>Dependência Funcional Não Trivial</td><td>Um dito determinante identifica outro atributo qualquer e o mesmo não faz parte do determinante</td><td>{banco, agência} -&gt; cidade</td></tr><tr><td>Dependência Funcional Irredutível à Esquerda</td><td>O lado esquerdo de uma DF é irredutível quando o determinante está em sua forma mínima, <br>não sendo possível reduzir a quantidade de atributos determinantes sem perder a DF</td><td>{cidade, estado} -&gt; país = não é irredutível<br>{estado} -&gt; país = irredutível</td></tr></tbody></table>

>---

### **Dependência Transtiva (DT)**
Uma forma de identificar facilmente uma dependência transitiva é quando um ou mais atributos se repetem constantemente, mas eles dependem de um atributo não chave.

_A dependência transitiva pode criar os seguintes problemas:_

* Perda completa de dados ao excluir dados unitários;

* Falta de versatilidade na inserção de dados, apresentando relatórios dependentes;

* Com a mudança de um atributo, há necessidade de alterar TODOS os registros da tabela

---

### **Primeira Forma Normal (1FN)**
Uma entidade está na 1FN quando cada atributo contém somente um valor e se encontra em somente um lugar. Este é o conceito de atomicidade de dados. Um campo não pode receber tipos diferentes de valores.

_Para obter a 1FN são necessárias algumas etapas:_

1. **Atributo Monovalorados**
Os atributos não podem ser multivalorados, ou seja, não podem apresentar mais de um valor. Por exemplo, o telefone pode ser um atributo multivalorado, já que uma pessoa pode ter de um telefone. Para manter a normalização, cada valor diferente do atributo deve ser atribuído em um registro diferente, repetindo todos os dados nas colunas restantes, mantendo a consistência dos dois registros.

2. **Entidades Unidimensionais**
A entidade não pode ter mais de duas dimensões, uma entidade com um propósito não pode assumir outro propósito. Por exemplo, uma plataforma de cadastro destinado para pessoa física, que armazena CPF, não pode se alternar para armezenar também CNPJ.

3. **Atributo de Tipo Único de Dado**
Um atributo não pode apresentar mais de um tipo de dado, como numérico e de texto, sendo apenas tratado de forma diferente. Deve-se decompor a tabela para separar os tipos distintos de dados.

4. **Definição de Chave Primária**
Deve-se definir uma chave.

---

### **Segunda Forma Normal (2FN)**
Uma tabela está na segunda forma da normal se estiver na primeira forma da normal e se todo atributo não-chave for determinado por todos os campos da chave primária. Ou seja, é preciso eliminar as dependências funcionais (DF) parciais.

>**Visa diminuir a redudância e o desagrupamento das informações. Nesta forma, a tabela passa a representar um número menor de entidades, sendo o cenário ideal uma situação na qual cada entidade seja armazenada em apenas uma tabela.**

_Para obter a 2FN são necessárias algumas etapas:_

1. **Chave Primária**
Eleger a chave primária (PK) da tabela

2. **Verificação de DF Parciais**
Verificar a existência de DF parciais

3. **Decomposição de dados** 
Mover campos que não se enquadram na 2FN para uma nova tabela e fazer a decomposição sem perdas

4. **Eliminação da DF Parcial** 
Na nova tabela criada, repetir os passos anteriores até que seja eliminada a DF parcial

---

### **Terceira Forma Normal (3FN)**
Também tem por objetivo reduzir as redundâncias, desagrupando as tabelas de forma que cada uma represente apenas UMA entidade.

_Para obter a 3FN são necessárias algumas etapas:_

1. **Identificação e Eliminação da Transitividade**
Uma tabela está na 3FN se estiver primeiro na 2FN e se todo atributo não-chave for determinado de forma não transitiva pela chave primária. Ou seja, todo atributo não-chave deve ser determinado SOMENTE pela chave primária. Deve-ser repetir esses passos até eliminar completamente a transitivdade.

**Exemplo:**

`NotaFical -> {Data, CodForn, Nome, Telefone, Endereço}`

- Neste cenário, os atributos Nome, Telefone e Endereço sempre vão se repetir nos registros, pois dependem do atributo não chave CodForn.

O cenário ideal seria:

`Tabela 1: {NotaFiscal} -> CodForn`
`Tabela 2: CodForn -> {Nome, Telefone, Endereço}`

---
---

## **Controle de Concorrência: ACID**
Afim de garantir `ACID` (Atomicidade, Consistência, Isolamento e Durabilidade) para o banco, é preciso implementar um controle dos acessos que os usuários fazem ao mesmo, chamados de **transações**, principalmente quando tentam acessar a mesma informação simultâneamente. O gerenciamento de transações em um SGBD comumente é feito sob o seguinte esquema:

`Abertura de transação > Bloqueio da tabela > Commit`

As transações podem receber dois tipos de bloqueio, o compartilhado e o exclusivo.

### **Bloqueio Compartilhado**
Caso sua instrução seja de `leitura`, mais de uma transação pode acessar a mesma informação.  
Caso sua instrução seja de `gravação`, ela não pode receber um bloqueio compartilhado.  

### **Bloqueio Exclusivo**
A transação que recebe o bloqueio exclusivo fica reservada para a instrução que compõe a transação, não permitindo que outra faça uso do mesmo dado.
