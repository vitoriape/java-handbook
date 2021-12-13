Índice
=================
<!--ts-->
   * [Infraestrutura de Redes](#infraestrutura-de-redes)
      * [Componentes de Rede](#componentes-de-rede)
      * [Tipos de Rede](#tipos-de-rede)
        * [Rede Ponto a Ponto | Peer-to-Peer](#rede-ponto-a-ponto--peer-to-peer)
        * [Rede Cliente-Servidor | Rede Estrela](#rede-cliente-servidor--rede-estrela)
        * [Malha](#malha)
        * [Escopo de Rede](#escopo-de-rede)
      * [Arquitetura de Rede](#arquitetura-de-rede)
      * [Meios Físicos](#meios-físicos)
        * [Cabeamento](#cabeamento)
      * [Diagramas de Rede](#diagramas-de-rede)
        * [Comunicação Duplex](#comunicação-duplex)
        * [Quadro de Enlace de Dados](#quadro-de-enlace-de-dados)
        * [Subcamadas de Enlace de Dados  da Ethernet](#subcamadas-de-enlace-de-dados-da-ethernet)
      * [Firmware](#firmware)
        * [Acesso](#acesso)
        * [Modo de Acesso e Comando](#modo-de-acesso-e-comando)
        * [Configuração Global](#configuração-global)
        * [Subconfigurações](#subconfigurações)
        * [Listar Comandos](#listar-comandos)
        * [Configurações de Seguraça](#configurações-de-segurança)
        * [Ligando e Desligando a Interface (Port Status)](#ligando-e-desligando-a-interface--port-status-)
        * [Configurações de Inicialização](#configurações-de-inicialização)
        * [Reiniciar o Sistema](#reiniciar-o-sistema)
      * [Endereçamento](#endereçamento)
        * [Exemplo de Endereçamento de Protocolo](#exemplo-de-endereçamento-de-protocolo)
        * [Exemplo de Configuração de IP (Padrão THCP)](#exemplo-de-configuração-de-ip--padrão-thcp-)
        * [Configurando uma SVI (Switch Virtual Interface)](#configurando-uma-svi--switch-virtual-interface-)
        * [Teste de Ping](#teste-de-ping)
   * [Switches](#switches)
     * [Métodos de Encaminhamento](#métodos-de-encaminhamento)
<!--te-->

---

## Infraestrutura de Redes
### Componentes de Rede
Essencialmente, uma rede é composta por dispostivos finais, os `hosts`, os dispositivos intermediários, como `switches`, `roteadores` e `firewalls`, e as mídias de conexão, ou seja, o `cabeamento`.

* **Placa de rede:** A placa de interface de rede, também chamada de `NIC`, conecta fisicamente o host à rede. 

* **Porta Física:** Conector/tomada em um dispositivo de rede no qual uma mídia se conecta a um `host` ou um outro `dispositivo de rede`.

* **Interface:** Portas especializadas em um dispositivo de rede que se conectam a redes individuais. Exemplo, quando um roteador está conectado à uma rede, as portas do mesmo são chamadas de `interface de rede`.

* **Cabeamento:** Pode ser feito por um cabo coaxial, de fibra óptica, ou de par trançado, por um repetidor ou por um transceptor;  

* **Concentrador:** Conhecido como Hub Ethernet e também chamado de repetidor multiporta, é responsável por `regenerar` e `retransmitir` sinais. 

* **Comutador:** Conhecido como Switch.

* **Roteador:** Conhecido como Router ou Gateway.

>---

### Tipos de Rede

<table><thead><tr><th>Sigla</th><th>Nome</th><th>Definição</th><th>Exemplos</th></tr></thead><tbody><tr><td>PAN</td><td>Personal Area Network</td><td>Comunicação limitada e pessoal entre dispositivos</td><td>Redes Bluetooth e UWB </td></tr><tr><td>SAN</td><td>Storage Area Network</td><td>Comunicação restrita entre um servidor e outros computadores</td><td>Ligação entre redes LAN e WAN via Hubs ou Switches</td></tr><tr><td>LAN</td><td>Local Area Network</td><td>Conecta dispositivos em um mesmo meio físico</td><td>Computadores em uma rede doméstica ou na mesma empresa</td></tr><tr><td>MAN</td><td>Metropolitan Area Network</td><td>Conecta duas LAN's não tão distantes</td><td>Dois escritórios de uma empresa conectados mesmo em locais diferentes da cidade</td></tr><tr><td>WAN</td><td>Wide Area Network</td><td>Rede ampla capaz de conectar dispositivos em países e até continentes diferentes</td><td>Internet</td></tr><tr><td>Sufixo W</td><td>Wireless</td><td>Redes sem fio</td><td>WLAN | WMAN | WWAN | WPAN</td></tr></tbody></table>

* A conexão entre dispositivos e internet é feita através de um provedor, um fornecedor de acesso chamado de **ISP**. 
  * Para conectar um dispositivo e um provedor, ***a nível doméstico***, podem ser usados cabos, satélites, conexão discada (dial-up), celulares, ou um **DSL** (Digital Subscriber Line), que é uma linha telefônica que transmite dados digitais.
  * Para conectar dispositivos e um provedor, ***a nível corporativo***, pode-se utilizar linhas alugadas dedicadas, **Metro Ethernet**, satélites ou um **DSL Comercial**.

>---

#### Topologia WAN
#### **Rede Ponto a Ponto | Peer-to-Peer**
Ligação permanente entre dois pontos finais. Nela, o protocolo de software de rede **não faz distinção**, e todos os dispositivos são **clientes** e **servidores**. É geralmente usada para compartilhamento de arquivos e impressoras, sendo mais **fácil de configurar** e menos complexa, além de mais barata.

No entanto, sua administração não é centralizada, portanto não é tão **segura**. Também **não é escalável** e acaba sendo **mais lenta**. São também limitadas **a dois nós**.

`_Dispositivos:` Desktop, Laptop, Impressora, Celular, Tablet, Servidor

>**Exemplo:** conexão doméstica entre dois computadores de uma casa

>---

#### **Rede Cliente-Servidor | Rede Estrela**
Possui um site central que interconecta  **sites de filial**. É composta por mediadores de **host** `(dispositivo final onde as mensagens se originam e são recebidas)`. Provém serviços de rede a partir das requisições dos clientes, tangendo a **infraestrutura** da rede ao promover a troca de mensagens. 

`_Dispositivos:` Switch, Router, Firewall, Internet, Cabeamento

>**Exemplo:** conexão de um usuário a um site através de um provedor

>---

#### **Malha**
Topologia de nós com **alta disponibilidade** na qual cada link é essencialmente um link ponto a ponto para outro nó.  Requer que todos os sistemas finais estejam interconectados a todos os outros sistemas.

---

#### **Escopo de Rede**
Delimita a Geografia de uma rede, considerando sua extensão física.

---

### Arquitetura de Rede
Conjunto de tecnologias que movimentam os dados na rede. 

#### **1. Tolerância a Falhas**
Capacidade de uma rede de limitar o número de dispositivos afetados durante uma falha. Recupera-se rapidamente de uma falha pois utiliza de uma **rede comutada por pacotes**, ou seja, de vários caminhos entre a origem e o destino de um sinal, chamada de **redundância**.

#### **2. Escalabilidade**
Capacidade de uma rede de se **expandir rapidamente** para suportar novos usuários sem afetar a experiência dos usuários existentes. Não há necessidade de criar **novos conjuntos de regras** para operar na rede.

#### **3. Qualidade do Serviço (QoS)**
Capacidade de uma rede de entregar a **experiência esperada pelo usuário**. Considerando as limitações decorrentes de um **congestionamento de rede**, como atrasos no carregamento de um vídeo ou cortes em uma ligação, uma rede deve ser configurada pensando nas **prioridades dos usuários**.

* **Largura de Banda:** Capacidade na qual um meio pode transportar dados, sendo medida em bits por segundo (`bps`) [ ou seja, em kilobits por segundo (`Kbps`), megabits por segundo (`Mbps`) ou gigabits por segundo (`Gbps`) ]. Não se trata de **velocidade**, mas sim da **quantidade** de dados transmitidos.

#### **3.1. Qualidade da Largura de Banda**

* **Latência:** Tempo necessário para os dados viajarem de um ponto a outro, considerando os atrasos.
* **Taxa de Transferência:** Medida da transferência de bits através da mídia durante um determinado período.
* **Goodput:** Medida de dados úteis transferidos em um determinado período, sendo sempre menor que a taxa de transferência, que geralmente é menor do que a largura de banda.

#### **4. Segurança**
Capacidade de segurança da infraestrutura de rede e segurança da informação. Tanto as informações dos **pacotes** e quanto as dos **dispositivos** devem ser protegidas.

* **Confidencialidade:** Apenas o destinário almejado pode acessar os dados enviados.

* **Integridade:** As informações não sofrem alteração durante a transmissão.

* **Disponibilidade:** Acesso confiável aos serviços para usuários que são autorizados.

---

### Meios Físicos
Permitem o deslocamento das mensagens entre os envolvidos em um [diagrama de redes](#diagrama-de-redes).

|                 Estrutura                 	|                              Modo                              	|
|:-----------------------------------------:	|:--------------------------------------------------------------:	|
|          Fios metálicos em cabos          	|                       Impulsos elétricos                       	|
| Fibra óptica com fibras de vidro/plástico 	|                          Pulsos de luz                         	|
|             Wireless (sem fio)            	| Modulação de frequências específicas de ondas eletromagnéticas 	|
|                                           	|                                                                	|

#### Cabeamento
#### Cabeamento de Cobre
#### **1. Par Trançado não Blindado (UTP)**
Meio físico de rede mais comum, usado para interconectar **dispositivos finais** de rede com dispositivos intermediários, como **comutadores** e **roteadores**. Seu cabo termina com conectores RJ-45.

>---

#### **2. Par Trançado Blindado (STP)**
Também usa o conector RJ-45, porém oferece mais **proteção contra ruídos** e acaba sendo **mais caro** e **mais difícil de instalar** do que o **UTP**.

>---

#### **3. Cabo Coaxial/Coax**
Possui dois condutores que compartilham o mesmo eixo. Eles conectam **antenas** a **dispositivos sem fio**, transportando a energia de radiofrequência entre as antenas e o equipamento de rádio. Também são parte da infraesturtura de **internet a cabo**, pois a instalação interna (do cliente) é feita com cabos coaxiais.

>---

Conectar equipamentos iguais = cabo crossover  
Conectar equipamentos diferentes = cabo direto

`Roteador` - `Switch` >> `PC1`  
---------------------->> `PC2`

---

### Diagramas de Rede
A Topologia de Redes divide-se em **Topologia Física** e **Topologia Lógica**, sendo um Framework de cabeamento estruturado.

* **Topologia Física:** Diz respeito a localização dos dispositivos intermediários e instalação dos cabos. É mais abrangente.

`_Exemplos:` Topologia em Estrela; Topologia de Barramento; Topologia em Estrela Estendida; Topologia em Anel.

* **Topologia Lógica:** Elucida a configuração dos dispositivos, portas e o esquema de [endereçamento](#endereçamento) da rede. É mais detalhada e local.

#### **Comunicação Duplex**
Diz respeito à direção da transmissão de dados entre dois dispositivos, comumente sendo **half** ou **full**.

* **Comunicação Half-Duplex:** Permite que apenas um dispositivo por vez **envie** ou **receba** na mídia compartilhada, ou seja, ambos os dispositivos podem transmitir e receber no meio físico, **mas não ao mesmo tempo**.

* **Comunicação Full-Duplex:** Ambos os dispositivos podem transmitir e receber simultaneamente na mídia compartilhada.

---

#### **Quadro de Enlace de Dados**
A Camada de Enlace de Dados, conhecida como Camada 2 ou Camada de Link de Dados, prepara os dados **encapsulados** (geralmente um pacote IPv4 ou IPv6) para o transporte pela mídia local. Além de **dados**, esses quadros possuem basicamente um **cabeçalho** e **trailer**.

* **Cabeçalho:** Início do quadro, contendo o **endereçamento** `[nós de origem e destino]` , o **tipo** `[protocolo da camada 3]` e o **controle** `[qualidade de serviço]`.

* **Pacote:** Carga usável do quadro, os **dados**.

* **Trailer:** Detecção de erros e fim do quadro.

---

#### **Subcamadas de Enlace de Dados da Ethernet**
A Ethernet, tecnologia LAN de comunicação por fios, é definida por **protocolos de camada física** e de **enlace de dados** `[LLC e MAC]`.

* **Subcamada LLC:** Realiza a tipificação do protocolo de camada de rede em uso no quadro de enlace de dados, permitindo que vários protocolos da camada 3 `[como IPv4 e IPv6]` usem a mesma **interface de rede e mídia**.

`P.S: Faz a comunicação entre o software de rede e o hardware do dispositivo.`

>---

* **Subcamada MAC:** Implementada no **hardware**, sendo responsável pelo **encapsulamento de dados** e pelo **controle de acesso**. 

`P.S: Fornece o endereçamento da camada 2.`

---

### Firmware
O Shell, responsável por se comunicar com o Kernel e oferecer uma interface interativa com o usuário, também existe para configurações de rede e é chamado de ***firmware***. 

É comum o uso de uma **GUI** para configurar roteadores domésticos.

* **GUI:** Interface de solicitações em um sistema operacional via ícones gráficos, como é o exemplodo **Windows**.

* **CLI:** Interface de solicitações do usuário via linha de comando, a exemplo do **Linux**.

>---

#### **Acesso**
Mesmo equipamentos que não precisam de configuração para operar precisam ser configurados e protegidos, seja via **Console**, **Secure Shell (SSH)**, **Telnet** ou até por uma porta **AUX**.

* **Console:** Gerenciamento físico por meio de um canal de manutenção. Para estabelecer uma **conexão de console** são necessários um ***software de emulação de terminal*** e um ***cabo especial de console*** que é conectado a RS-232.

* **Secure Shell:** Estabelece uma conexão **CLI** remota e segura por meio de uma interface visual em rede que ***precisa ser ativa***.

* **Telnet:** Utiliza as mesmas tecnologias do Secure Shell porém de forma **insegura**, sem criptografia.

* **AUX:** Estabelece uma **CLI** remotamente por uma conexão telefônica com o uso de um **modem**.

>---

#### **Modo de Acesso e Comando**
O gerenciamento de um dispositivo de rede pode ser feito em **modo usuário** e **modo privilegiado**. Apenas útil para operações básicas, o modo usuário é representado por uma `>`, enquanto o modo privilegiado por um `#`.

* [Documentação](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/fundamentals/configuration/15mt/fundamentals-15-mt-book/cf-cli-basics.html#GUID-441AAE57-A57C-49F6-A801-DF94A731312D)

```cmd
# Entrar no modo privilegiado:
Switch> enable

# Retornar ao modo usuário:
Switch# disable


# Retornar para o modo privilegiado:
Switch(config-line)# end
Switch#
```

>---

#### **Configuração Global**

```cmd
# Entrar no modo de configuração global:
Switch# configure terminal
Enter configuration commands, one per line.  End with CNTL/Z.
Switch(config)#

# Sair do modo de configuração global:
Switch(config)# exit
```

>---

#### **Subconfigurações**

```cmd
# Entrar na subconfiguração de linha para a porta do console:
Switch> enable
Switch# configure terminal
Switch(config)# line console 0
Switch(config-line)#

# Entrar na subconfiguração de linha VTY, habilitando o uso de prompt de comando:
Switch> enable
Switch# configure terminal
Switch(config)# line vty 0 15
Switch(config-line)#

# Entrar na subconfiguração da interface da VLAN 1:
Switch(config)# interface vlan 1
Switch(config-if)#

# Alternar para o modo de subconfiguração do console de linha:
Switch(config)# interface vlan 1
Switch(config-if)# line console 0
Switch(config-line)#
```

>---

#### **Listar Comandos**

```cmd
Switch> ?

# Listar variáveis possíveis para um comando
Switch> copy?
```

>---

#### **Configurações de Seguraça**

```cmd
# Configuração do hostname:
Switch> enable
Switch# configure terminal
Switch(config)# hostname Sw-Sala-1

# Configuração do console:
Sw-Sala-1(config)# line console 0
Sw-Sala-1(config-line)# password xablau
Sw-Sala-1(config-line)# login
Sw-Sala-1(config-line)# end

# Protegendo o acesso privilegiado:
Sw-Sala-1# configure terminal
Sw-Sala-1(config)# enable secret xiblau
Sw-Sala-1(config)# exit

# Protegendo linhas VTY:
Sw-Sala-1# configure terminal
Sw-Sala-1(config)# line vty 0 15
Sw-Sala-1(config-line)# password xoblau 
Sw-Sala-1(config-line)# login 
Sw-Sala-1(config-line)# end

# Criptografando senhas:
Sw-Sala-1# configure terminal
Sw-Sala-1(config)# service password-encryption

# Adicionando um banner de aviso:
Sw-Sala-1#configure terminal
Sw-Sala-1(config)#banner motd # mensagem #

# Exibindo resultados:
Sw-Sala-1(config)# end
Sw-Sala-1# show running-config
!
!
!
line con 0
 password 7 08394D4C051810
 login
!
line vty 0 4
 password 7 08394D4C051810
 login
line vty 5 15
 password 7 08394D4C051810
 login
!
!
!
!
end
```

>---

#### **Ligando e Desligando a Interface (Port Status)**

```cmd
# Ligando porta ethernet (interface)
Sw-Sala-1# interface
Sw-Sala-1# no shutdown

# Desligando interface inativa
Sw-Sala-1# interface
Sw-Sala-1# shutdown
```

>---

#### **Configurações de Inicialização**

```cmd
# Salvando configurações temporárias na memória
Sw-Sala-1# copy running-config startup-config
# Opção 2: copy run start
# Opção 3: wr

# Salvando configurações da NVRAM na memória temporária
Sw-Sala-1# copy startup-config running-config
# Opção 2: copy start run


# Exibindo configurações
Sw-Sala-1# show startup-config #NVRAM
Sw-Sala-1# show running-config #RAM/FLASH

# Exibindo diretórios de configuração
Sw-Sala-1# dir ?
Sw-Sala-1# dir nvram
Sw-Sala-1# dir flash

# Remover configurações salvas na memória
Sw-Sala-1# erase startup-config
Sw-Sala-1# erase running-config
```

>---

#### **Reiniciar o Sistema**

```cmd
Sw-Sala-1# reload
```

---

### Endereçamento

<table><thead><tr><th></th><th></th></tr></thead><tbody><tr><td>Protocolo</td><td>Interpreta mensagens em um software</td></tr><tr><td>IP</td><td>Rótulo unitário para protocolo de Internet</td></tr><tr><td>Endereço IP</td><td>Endereço lógico da Camada de Rede (Camada 3)</td></tr><tr><td>Rede</td><td>Endereçamento base de IP</td></tr><tr><td>Gateway</td><td>Endereço da placa de rede, o IP da porta do roteador</td></tr><tr><td>Máscara de Rede</td><td>Define a quantidade de máquinas e classes</td></tr><tr><td>Broadcast</td><td>Transfere mensages para todos os receptores ao mesmo tempo</td></tr><tr><td>DHCPv4</td><td>Configura automaticamente as informações de endereçamento IPv4</td></tr><tr><td>DHCPv6</td><td>Alocam endereços dinâmicos para Ipv6</td></tr><tr><td>SLAAC</td><td>Configuração automática de endereço sem estado</td></tr></tbody></table>

>---

#### **Exemplo de Funcionamento de Protocolo**

Protocolo: HTTP  
Porta: 80

**Usa o protocolo DNS para prover navegação na internet | O protocolo DNS onverte endereços `IP` em nomes de domínio, como `www.github.com`**

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

#### **Configurando uma SVI (Switch Virtual Interface)**

```cmd
Switch# configure terminal
Switch(config-if)# interface vlan 1
Switch(config-if)# ip address 192.168.1.20 255.255.255.0
Switch(config-if)# no shutdown
Switch# exit
Switch(config)# ip default-gateway 192.168.1.1
```

---

#### **Teste de Ping**
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

---

## Switches
Um switch Ethernet da Camada 2 é um comutador de dados que desconhece completamente os protocolos anexados nos [quadros de enlace de dados](#quadro-de-enlace-de-dados), usando apenas os **endereços MAC** para tomar decisões de encaminhamento.

Ao analisar cada quadro, ele usa como base sua **tabela de endereços MAC**, também chamada de **tabela de memória de conteúdo endereçável** `(CAM)`. 

**P.S_1:** Se o endereço MAC de origem não existe, ele então **é adicionado à tabela** junto ao **número da porta de entrada**. 

**P.S_2:** Caso o endereço MAC de origem não exista na tabela, mas em uma porta diferente, o switch tratará ele como uma nova entrada. A entrada então é substituída usando **o mesmo endereço MAC**, mas com o número de porta mais atual.

---

### Métodos de Encaminhamento
#### **Switching Store-and-Forward**
Recebe o quadro inteiro de enlace de dados e calcula o CRC **(método de detecção de erros)**; se o CRC for válido, o switch procura o endereço de destino e, em seguida, o quadro é encaminhado para fora da porta correta.

>---

#### **Switching cut-through**
Lê pelo menos o endereço de destino do quadro e encaminha o mesmo **antes dele ser totalmente recebido**.

---






