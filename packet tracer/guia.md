Índice
=================
<!--ts-->
   * [Infraestrutura de Redes](#infraestrutura-de-redes)
      * [Componentes de Rede](#componentes-de-rede)
      * [Tipos de Rede](#tipos-de-rede)
      * [Meios Físicos](#meios-físicos)
      * [Diagramas de Rede](#diagramas-de-rede)
      * [Endereçamento](#endereçamento)
   * [Estruturas](#estruturas)
      * [Estrutura Switch-Roteador](#estrutura-switch-roteador)
<!--te-->


## Infraestrutura de Redes
### Componentes de Rede

### Tipos de Rede

<table><thead><tr><th>Sigla</th><th>Nome</th><th>Definição</th><th>Exemplos</th></tr></thead><tbody><tr><td>PAN</td><td>Personal Area Network</td><td>Comunicação limitada e pessoal entre dispositivos</td><td>Redes Bluetooth e UWB </td></tr><tr><td>SAN</td><td>Storage Area Network</td><td>Comunicação restrita entre um servidor e outros computadores</td><td>Ligação entre redes LAN e WAN via Hubs ou Switches</td></tr><tr><td>LAN</td><td>Local Area Network</td><td>Conecta dispositivos em um mesmo meio físico</td><td>Computadores em uma rede doméstica ou na mesma empresa</td></tr><tr><td>MAN</td><td>Metropolitan Area Network</td><td>Conecta duas LAN's não tão distantes</td><td>Dois escritórios de uma empresa conectados mesmo em locais diferentes da cidade</td></tr><tr><td>WAN</td><td>Wide Area Network</td><td>Rede ampla capaz de conectar dispositivos em países e até continentes diferentes</td><td>Internet</td></tr><tr><td>Sufixo W</td><td>Wireless</td><td>Redes sem fio</td><td>WLAN | WMAN | WWAN | WPAN</td></tr></tbody></table>

>---

#### **Rede Ponto a Ponto | Peer-to-Peer**
Nela, o protocolo de software de rede **não faz distinção**, e todos os dispositivos são **clientes** e **servidores**. É geralmente usada para compartilhamento de arquivos e impressoras, sendo mais **fácil de configurar** e menos complexa, além de mais barata.

No entanto, sua administração não é centralizada, portanto não é tão **segura**. Também **não é escalável** e acaba sendo **mais lenta**.

`_Dispositivos:` Desktop, Laptop, Impressora, Celular, Tablet, Servidor

>**Exemplo:** conexão doméstica entre dois computadores de uma casa

---

#### **Rede Cliente-Servidor | Rede Estrela**
Composta por mediadores de **host** `(dispositivo final onde as mensagens se originam e são recebidas)`. Provém serviços de rede a partir das requisições dos clientes, tangendo a **infraestrutura** da rede ao promover a troca de mensagens. 

`_Dispositivos:` Switch, Router, Firewall, Internet, Cabeamento

>**Exemplo:** conexão de um usuário a um site através de um provedor

>---

#### Escopo de Rede
Delimita a Geografia de uma rede, considerando sua extensão física.

---

### Meios Físicos

---

### Diagramas de Rede
Conectar equipamentos iguais = cabo crossover  
Conectar equipamentos diferentes = cabo direto

`Roteador` - `Switch` >> `PC1`  
---------------------->> `PC2`


---

### Endereçamento

<table><thead><tr><th></th><th></th></tr></thead><tbody><tr><td>`Protocolo`</td><td>Interpreta mensagens em um software</td></tr><tr><td>`IP`</td><td>Rótulo unitário para protocolo de Internet</td></tr><tr><td>`Rede`</td><td>Endereçamento base de IP</td></tr><tr><td>`Gateway`</td><td>Endereço da placa de rede, o IP da porta do roteador</td></tr><tr><td>`Máscara de Rede`</td><td>Define a quantidade de máquinas e classes</td></tr><tr><td>`Broadcast`</td><td>Transfere mensages para todos os receptores ao mesmo tempo</td></tr></tbody></table>

>---

#### **Exemplo de Funcionamento de Protocolo**

Protocolo: HTTP  
Porta: 80

**Usa o protocolo DNS para prover navegação na internet | O protocolo DNS onverte números em `IP's` e `IP's` em números**

1. O cliente/host faz uma solicitação ao `servidor DNS` para saber **qual o endereço correto para requisição**.
2. O servidor DNS informa o endereço **(número)** para que o cliente possa fazer sua requisição.
3. O host usa o número informado para criar **requisições** para o servidor **(domínio e afins)**.

>---

#### **Exemplo de Configuração de IP (Padrão THCP)**

IP: 192.168.0.X  
Máscara: 255.255.255.0

**192 - 255 |
168 - 255 |
0 - 255 |
X - 0 |**

1. Todas as máquinas com essa máscara de rede estão na mesma rede.
2. Nenhuma máquina pode ser endereçada no IP ***192.168.0.0*** e nem no ***192.168.0.255***.
3. Ou seja, as máquinas podem ser receber do IP ***192.168.0.1*** ao ***192.168.0.244***.

<table><thead><tr><th>Broadcast</th><th>Rede</th></tr></thead><tbody><tr><td>192.168.0.255</td><td>192.168.0.0</td></tr></tbody></table>

---

#### **Exemplo de Teste de Ping**
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


