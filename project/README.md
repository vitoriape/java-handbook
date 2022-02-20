Guia Desenvolvimento de Sistemas
================================
<!--ts-->
* [Sistemas de Softwares](#sistemas-de-softwares)
  * [Características Gerais](#características-gerais)
  * [Características Técnicas](#características-técnicas)
* [Paradigmas de Desenvolvimento](#paradigmas-de-desenvolvimento)
  * [Paradigma Estruturado](#paradigma-estruturado)
  * [Paradigma Orientado a Objetos](#paradigma-orientado-a-objetos)
* [Etapas de Desenvolvimento](#etapas-de-desenvolvimento)
  * [Análise](#análise)
  * [Projeto](#projeto)
  * [Construção](#construção)
  * [Testes](#testes)
  * [Implantção](#implantação)
  * [Manutenção](#manutenção)
<!--te-->

---
---

## **Sistemas de Softwares**
### **Características Gerais**
#### **Invisibilidade**
Softwares não são visíveis ou tangíveis, somente os resultados do seu trabalho.

#### **Complexidade**
Os elementos interagem de forma não linear e a ampliação de um software não depende da repetição desses elementos, mas sim ampliar sua funcionalidade.

#### **Mutabilidade**
Os sistemas de softwares estão em constante mudança.

#### **Conformidade**
Quando o cliente começa a utilizar o software, gerando resultados, é obrigatório que o mesmo esteja em conformidade com seu escopo e objetivo.

#### **Inalterabilidade**
Softwares não se desgastam fisicamente.

---

### **Características Técnicas**
#### **Reusabilidade**
Os componentes de um software podem ser reaproveitados por outro.

#### **Manutenibilidade**
Um sistema de software precisa evoluir para atender novas necessidades do cliente final.

#### **Confiança e Proteção**
Garantia de que o software não falhará e manterá seus dados sensíveis seguros.

#### **Eficiência**
Não se deve desperdiçar recursos do sistema, tal como memória e processamento.

#### **Aceitabilidade**
O software deve ser aceitável para o usuário, cumprindo um certo nível de usabilidade dentro daquilo que foi requisitado.

---
---

## **Paradigmas de Desenvolvimento**
Norma ou conjunto de diretrizes do desenvolvimento de projetos de softwares.

### **Paradigma Estruturado**
Focado nas operações intermediadas pelo software e nas transformações de dados. Acabou tornando-se obsoleto para as aplicações atuais.

#### **Projeto Estruturado**
O processo de desenvolvimento transita entre cada etapa uma única vez, causando lentidão e mais trabalho.

---

### **Paradigma Orientado a Objetos**
Um objeto é um artefato de software (não tangível e abstraído, "simulado") que incorpora atributos e as operações que envolvem os mesmos. 

<table><thead><tr><th colspan="2">Principais Características</th></tr></thead><tbody><tr><td>Independência</td><td>Os objetos, seus atributos e operações são unidades independentes</td></tr><tr><td>Armazenamento</td><td> O detalhamento do armazenamento dos atributos não é de conhecimento externo, ou seja, os requisitos de funcionamento do software devem estar dentro do mesmo</td></tr><tr><td>Reutilização</td><td>Já na criação do escopo do projeto deve-se pensa em reuso de componentes</td></tr><tr><td>Manutenção</td><td>O foco é desenvolver mais facilmente e mais rapidamente</td></tr><tr><td>Programação Estruturada</td><td>Ao aumentar a complexidade de um sistema, o ideal é produzir unidades menores e independentes ao invés de grandes blocos operacionais complexos</td></tr></tbody></table>

#### **Projeto Orientado a Objetos**
O processo de desenvolvimento passa diversas vezes por cada etapa e, esse conjunto de etapas, é o que desenvolve o objeto.

---
---

## **Etapas de Desenvolvimento**
Análise - Projeto - Construção - Testes - Implantação - Manutenção

### **Análise**
`[O quê?]`
Nela, é estabelecida a maneira mais viável de solucionar um problema. São identificadas as necessidades funcionais e os requisitos técnicos.

<table><thead><tr><th colspan="2">Etapas</th></tr></thead><tbody><tr><td>Identificação</td><td>São indicas as necessidades do sistema</td></tr><tr><td>Avaliação</td><td>Detalhamento da concepção do sistema quanto à sua realização</td></tr><tr><td>Realização</td><td>Análise da viabilidade econômica e viabilidade técnica</td></tr><tr><td>Atribuição</td><td>Incumbência das funções de cada elemento do sistema, hardware, software, pessoas, banco de dados e afins</td></tr><tr><td>Estabelecimento</td><td>Apontamento das restrições de prazo e de custo operacional</td></tr></tbody></table>

---

### **Projeto**
`[Como?]`
Viabiliza tecnicamente as atribuições do sistema.

<table><thead><tr><th colspan="2">Escopo</th></tr></thead><tbody><tr><td>Estrutura de Dados</td><td>Representa um relacionamento lógico entre elementos e dados</td></tr><tr><td>Procedimentos</td><td>Hierarquia de controle ligada ao processamento, ou seja, detalhamento das operações</td></tr><tr><td>Arquitetura de Software</td><td>Organização dos componentes de um programa considerando a estrutura de dados</td></tr><tr><td>Interfaces</td><td>Fluxo de informações levando em conta a interação do usuário, com outros sistemas e com os componentes internos</td></tr></tbody></table>

---

### **Construção**
`[Programação]`
Modularidade do software segmentando o mesmo em componentes posteriormente integrados para atender aos requisitos estabelecidos.

- Considera a criação de um banco de dados e seu controle, realizado pelo sistema de gerenciamento de BD.

#### **Integração**

<table><thead><tr><th colspan="2">Integração</th></tr></thead><tbody><tr><td colspan="2">Pode considerar a integralização de componentes do mesmo sistema ou entre sistemas distintos.</td></tr><tr><td>Integração Simultânea</td><td>Todos os componentes são agrupados de uma vez só</td></tr><tr><td>Integração Incremental</td><td>Os componentes vão sendo integrados um de cada vez</td></tr></tbody></table>

- A Integração Incremental elimina a necessidade de prontidão para uso de todos os componentes, otimizando também a realização de testes e localização de erros.

---

### **Testes**

---

### **Implantação**

---

### **Manutenção**

---

## ****
### ****
#### ****