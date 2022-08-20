Index
=====
<!--ts-->
* [Guia Excel](#guia-excel)
* [Guia VBA](#guia-vba)
<!--te-->

---
---

# Guia Excel
<!--ts-->
* [Busca de Dados](#busca-de-dados)
  * [PROCV Invertido](#procv-invertido)
* [Validação de Dados](#validação-de-dados)
  * [Listas Dinâmicas](#listas-dinâmicas)
  * [Limitar Base de Dados](#limitar-base-de-dados)
* [Formatação de Células](#formatação-de-células)
* [Formatação Condicional](#formatação-condicional)
  * [Linhas Zebradas](#linhas-zebradas)
  * [Condicional Vencimentos](#condicional-vencimentos)
<!--te-->

---
---

## **Busca de Dados**
### **PROCV Invertido**
```excel
=PROCV(A2;ESCOLHER({1\2\3\4};
tabela[Coluna1];
tabela[Coluna2];
tabela[Coluna3];
tabela[Coluna4]);1;0)
```

>---

## **Validação de Dados**
### **Listas Dinâmicas**
```excel
=DESLOC(Contracts!$B$3:$B$26;
  CORRESP($A3;Contracts!$A$3:$A$26;0)-1;0;
  CONT.SE(Contracts!$A$3:$A$26;$A3);1)
```

### **Limitar Base de Dados**
```excel
=MÁXIMO(BancodeDados!A3:A99999) +1 
```

>---

### **Formatação de Células**
```excel
_-"[R$"* #.##0,00_ ;[Red]_-"[R$"* - #.##0,00 ;_-"[R$"* "-"??_ ;_-@_ 
```

>---

## **Formatação Condicional**
### **Linhas Zebradas**

```excel
Todas as linhas
=MOD(LIN();2)=0

Somente linhas com conteúdo
=E(MOD(LIN();2)=0;$C10<>””)
```

### **Condicional Vencimentos**
```excel
=IF(J4=0;"Sem vencimento";
  IF(L4<1;"Vencido";
  IF(L4<=10;"Próximo";
  IF(L4>10;"No prazo";))))
```

---
---

# Guia VBA
<!--ts-->
* [](#)
<!--te-->
