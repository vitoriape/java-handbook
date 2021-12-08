Índice
=================
<!--ts-->
   * [Infraestrutura de Redes](#infraestrutura-de-redes)
      * [Componentes de Rede](#componentes-de-rede)
      * [Endereçamento](#endereçamento)
   * [Estruturas](#estruturas)
      * [Estrutura Switch-Roteador](#estrutura-switch-roteador)
<!--te-->


## Infraestrutura de Redes
### Componentes de Rede
 
- Ponto a Ponto
>**Exemplo:** conexão doméstica entre dois computadores de uma casa

- Cliente-Servidor
>**Exemplo:** conexão de um usuário a um site através de um provedor

---

### Endereçamento

- IP

Rótulo unitário para protocolo de Internet.

- Rede

Endereçamento base de IP.


- Gateway

Endereço da placa de rede, o IP da porta do roteador.

- Máscara de Rede

Define a quantidade de máquinas e classes.

- Broadcast

Transfere mensages para todos os receptores ao mesmo tempo.


>**Exemplo:**

IP: 192.168.0.X  
Máscara: 255.255.255.0

* Padrão THCP

**192 - 255 |
168 - 255 |
0 - 255 |
X - 0 |**

1. Todas as máquinas com essa máscara de rede estão na mesma rede.
2. Nenhuma máquina pode ser endereçada no IP ***192.168.0.0*** e nem no ***192.168.0.255***.
3. Ou seja, as máquinas podem ser receber do IP ***192.168.0.1*** ao ***192.168.0.244***.

<table><thead><tr><th>Broadcast</th><th>Rede</th></tr></thead><tbody><tr><td>192.168.0.255</td><td>192.168.0.0</td></tr></tbody></table>

---

## Estruturas
### Estrutura Switch-Roteador
Conectar equipamentos iguais = cabo crossover  
Conectar equipamentos diferentes = cabo direto

`Roteador` - `Switch` >> `PC1`  
---------------------->> `PC2`

---

#### Teste de Ping
As máquinas só retornam ping se estiverem na mesma **rede**, por isso a necessidade de um `roteador`.

**1. Obtendo IP dos dispositivos:**

```cmd
>ipconfig
```

>**Dispositivo I:**

```cmd
Configuração de IP do Windows

Adaptador Ethernet Ethernet:                

Endereço IPv4. . . . . . . .  . . . . . . . : 192.168.0.2 
```

>**Dispositivo II:**

```cmd
Configuração de IP do Windows

Adaptador Ethernet Ethernet:                

Endereço IPv4. . . . . . . .  . . . . . . . : 192.168.0.3 
```

>****

**2. Testando o ping entre os dispositivos** 

>**No Dispositivo I:**

```cmd
>ping 192.168.0.3 
```

---