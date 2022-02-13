Guia SQL
=================
<!--ts-->
* [Banco de Dados e SGBD](#banco-de-dados-e-sgbd)
  * [Ciclo de Valoração de Dados](#ciclo-de-valoracao-de-dados)
  * [SGBD](#sgbd)
* [Projeto Lógico](#projeto-lógico)
  * [Representação](#representação)
  * [Classificação](#classificação)
  * [Cardinalidade](#cardinalidade)
  * [Mapeamento de Cardinalidade](#mapeamento-de-cardinalidade)
* [Linguagem SQL](#linguagem-sql)
  * [Tipos de Dado](#tipos-de-dado)
  * [Comandos](#comandos)
  * [Sintaxe](#sintaxe)
  * [CRUD](#crud)
  * [Comandos de CRUD (DML)](#comandos-de-crud-dml)
  * [Comandos de CRUD (DDL)](#comandos-de-crud-ddl)
<!--te-->

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

## **Linguagem SQL**
A Linguagem SQL é uma linguagem **declarativa** orientada a **banco de dados**.

---

## **Tipos de Dado**
📚 **Texto | String Type**

- **char**
Aloca o espaço usado na memória independente do tamanho real do dado.

**Exemplo:** Se um campo possui um limite de 20 caracteres e o usuário só usa 10, o banco aloca os 10 "restantes" na memória de todo jeito.

- **varchar**
Delimita o espaço na memória de acordo com o tamanho utilizado pelo usuário, armazenando apenas o dado "real".

---

📚 **Número | Numeric Type**

---

📚 **Data | Date Type**

**Os SGBD's sempre consideram datas como dados do tipo string**

---

## **Comandos**
📚 **Data Definition Language (DDL)**
Comandos usados para estruturar, criar, modificar e remover tabelas ou databases, gerenciando objetos.

```sql
create
alter
drop
```

📚 **Data Manipulation Language (DML)**
Usada para recuperar, inserir, remover e alterar dados inativos na database.

```sql
select  
insert  
update  
delete
```
 
📚 **Data Control Language (DCL)**
Comandos utilizados pelo administrador para controlar o acesso dos usuários.

```sql
grant
revoke
```

---

## **Sintaxe**
📚 **create**
```sql
CREATE TABLE tb_nome_da_entidade  
(  
      nome_da_coluna TIPO(TAMANHO) [RESTRIÇÕES],    
      nome VARCHAR(40) NOT NULL,  
      matricula INTEGER NOT NULL,  
      dat_matricula DATE,
      CONSTRAINT tb_nome_da_entidade_pk PRIMARY KEY (matricula),
      CONSTRAINT tb_nome_da_entidade FOREIGN KEY (departamento) REFERENCES tb_departamento(departamento)
);
```

>(*) **Em negrito as palavras reservadas, comumente em ALT.**

---

**Nome da table** 📚
- **tb_nome_da_entidade** = padrão comum para nome de tabela  

**Colunas** 📚
- **nome_da_coluna** = livre escolha
- **TIPO** = numérico ou não numérico
- **TAMANHO** = alocação na memória

**Restrições** 📚
- **Classificação** = ```NULL``` | ```NOT NULL```
- **Integridade** = ```CONSTRAINT``` (```PK``` e ```FK```)

📚 **Declarando uma restrição:**

- Primary Key  
**CONSTRAINT** nome_da_restrição **PRIMARY KEY** (campos_que_compõem)

- Foreign Key  
**CONSTRAINT** nome_da_restrição **FOREIGN KEY** (campos_que_compõem) REFERENCES tabela_referencia(campos que_compõem),

---

## **CRUD**
As **tabelas** no SGBD podem ser criadas **a qualquer momento**, ficando disponíveis para **CRUD** logo após sua criação. Um banco de dados só deve ser utilizado para CRUD:

```sql 
Create  
Read  
Update  
Delete
```

---

## **Comandos de CRUD (DML)**
📚 **Create**  
**INSERT INTO** nome_da_tabela(campo1, campo2, campo3)  
**VALUES** (valor1, valor2, valor3)

>(*) **Em negrito as palavras reservadas, comumente em ALT.**

📚 **Exemplo**  
**INSERT INTO** nome_da_tabela(matricula, nome, data_matricula)  
**VALUES** (0001, 'Laura', '01-02-2022')

---

📚 **Read**  
**SELECT** campo1, campo2, campo3
**FROM** nome_da_tabela

>**Clausula WHERE** 📚
Usada para filtrar registros, trazendo apenas os resultados indicados.

**SELECT** * **FROM** nome_da_tabela **WHERE** campo CONDIÇÃO valor

||

**SELECT** campo1 **FROM** nome_da_tabela **ORDER BY**, campo1 **ASC**
**SELECT** campo2 **FROM** nome_da_tabela **ORDER BY**, campo2 **DESC**
**SELECT** * **FROM** nome_da_tabela **GROUP BY**

||

>(*) **Em negrito as palavras reservadas, comumente em ALT.**

---

📚 **Update**  
**UPDATE** nome_da_tabela
**SET** campo1  = valor

>**Clausula WHERE** 📚
Usada para filtrar registros, atualizando apenas os resultados indicados.

**UPDATE** nome_da_tabela SET campo1 = valor **WHERE** campo CONDIÇÃO valor

||

>(*) **Em negrito as palavras reservadas, comumente em ALT.**

---

📚 **Delete**  
**DELETE FROM** nome_da_tabela

>**Clausula WHERE** 📚
Usada para filtrar registros, excluindo apenas os resultados indicados.

**DELETE FROM** nome_da_tabela **WHERE** campo CONDIÇÃO valor

||

>(*) **Em negrito as palavras reservadas, comumente em ALT.**

---

# **NA DÚVIDA, USE SEMPRE O WHERE**
Para atualizar apenas um registro, usar a clausula na chave primária.

📚 **CONDIÇÕES**  
Igual =  
Maior >  
Menor <  
Maior igual >=  
Menor igual <=  
Diferente <>  

---

## **Comandos de CRUD (DDL)**
📚 **Exclusão de uma tabela**  
**DROP TABLE** nome_da_tabela  

📚 **Alteração de uma tabela**  
**ALTER TABLE** nome_da_tabela  
**ALTER TABLE** nome_da_tabela **ADD** nome_campo TIPO  
**ALTER TABLE** nome_da_tabela **DROP COLUMN** nome_campo

**Exemplo**  
**ALTER TABLE** patrimonios **ADD** loteamento VARCHAR  
**ALTER TABLE** patrimonios **DROP COLUMN** id_antigo
		   
---
---