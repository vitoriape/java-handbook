Guia Jupyter Notebook
=================
<!--ts-->
   * [Criando Menus](#criando-menus)
   * [Operando Mouse](#operando-mouse)
     * [Exibir Posição do Mouse](#exibir-posição-do-mouse)
     * [Mover Mouse](#mover-mouse)
     * [Clicar](#clicar)


   * [Operando Teclado](#operando-teclado)
     * [Digitar](#digitar)
     * [Acionar Tecla Enter](#acionar-tecla-enter)
     * [Acionar Atalho de Teclado](#acionar-atalho-de-teclado)
     * [Abrindo Programas pelo Win R](#abrindo-programas-pelo-win-r)

   * [Pausando Script](#pausando-script)

   * [Automação de GUI](#automação-de-gui)
     * [Instalar pyautogui](#instalar-pyautogui)

   * [Controlando Navegador](#controlando-navegador)
     * [Instalar selenium](#instalar-selenium)
     * [Abrindo Navegador](#abrindo-navegador)
     * [Obtendo Janela Ativa e Fechando](#obtendo-janela-ativa-e-fechando)
     * [Usando HTML dos Sites](#usando-html-dos-sites)

   * [Automatizando Excel](#automatizando-excel)
     * [Instalar xlsxwriter](#instalar-xlsxwriter)
     * [Instalar openpyxl](#instalar-openpyxl)
     * [Loops](#loops)
     * [Selecionar Aba da Planilha](#selecionar-aba-da-planilha)
     * [Encontrar Célula Vazia](#encontrar-célula-vazia)
     * [Salvar Planilha e Abrir](#salvar-planilha-e-abrir)

     * [Indexando Dados](#indexando-dados)
<!--te-->

---

## **Criando Menus**
```jupyter
nomeVariavel = pyautogui.confirm('Texto exibido ao usuário', buttons = ['Opção 1', 'Opção 2', 'Opção 3'])

if nomeVariavel == 'Opção 1':
    print('Opção 1')

elif nomeVariavel == 'Opção 2':
    print('Opção 2')

elif nomeVariavel == 'Opção 3':
    print('Opção 3')
```

---
---

## **Operando Mouse**
### **Exibir Posição do Mouse**
```jupyter
print (nomeVariavel.position())
```

---

### **Mover Mouse**

```jupyter
nomeVariavel.moveTo(x=0, y=0)
```

---

### **Clicar**
```jupyter
nomeVariavel.click(x=0, y=0)
```

---
---

## **Operando Teclado**
### **Digitar**
```jupyter
nomeVariavel.typewrite('texto')
```

---

### **Acionar Tecla Enter**
```jupyter
nomeVariavel.press('enter')
```

---

### **Acionar Atalho de Teclado**
```jupyter
nomeVariavel.hotkey('win', 'r')
```

---

### **Abrindo Programas pelo Win R**
```jupyter
nomeVariavel.hotkey('win', 'r')
nomeVariavel.typewrite('microsoft-edge://')
nomeVariavel.sleep(2)
nomeVariavel.press('enter')
```

---
---

## **Pausando um Script**
```jupyter
nomeVariavel.sleep(4)
```

---
---

## **Automação de GUI**
Para Python2 e Python3, é necessário instalar a biblioteca `pyautogui`

### **Instalar pyautogui**

```jupyter
!pip install pyautogui
import pyautogui

import pyautogui as nomeVariavel
```

---
---

## **Controlando Navegador**
É necessário um framework para testar aplicativos web, o `selenium`, e também um `webdriver`.

### **Instalar selenium**
```jupyter
!pip install selenium
from selenium import webdriver

nomeVariavel = webdriver.NomeDoBrowser()
```

---

### **Abrindo Navegador**
```jupyter
from selenium import webdriver as opcoesNavegador
from selenium.webdriver.common.keys import Keys

abrirNavegador = opcoesNavegador.Edge()
abrirNavegador.get('link do site')
```

---

### **Obtendo Janela Ativa e Fechando**
```jupyter
novaVariavel = nomeVariavel.getActiveWindow()
novaVariavel.close()
```

---

### **Usando HTML dos Sites**
```jupyter
#Encontrando elementos pelo HTML
nomeVariavel.find_element_by_name("nomeHTML")

#Usando campos de texto
nomeVariavel.find_element_by_name("campo").send_keys("texto")

#Apertando botões
nomeVariavel.find_element_by_name("btnSubmit").send_keys(Keys.RETURN)

#Retornando dados
dadoTexto = nomeVariavel.find_element_by_xpath("scriptpath")[0].text
```

---
---

## **Automatizando Excel**
Para gravar e formatar dados no Excel, usa-se a biblioteca `xlsxwriter`, e para a abertura de planilhas externas, gravação e formatação dos dados, a biblioteca `openpyxl`.

### **Instalar xlsxwriter**
```jupyter
!pip install xlsxwriter

import xlsxwriter
import os

#Determina o caminho da planilha
caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'

#Define a planilha criada e atribui à ela a biblioteca xlsxwriter
planilhaCriada = xlsxwriter.Workbook(caminhoArquivo)

#Cria uma nova planilha em branco com o nome sheet1
sheet1 = planilhaCriada.add_worksheet()

#Seleciona a célula A1 da planilha e escreve Título
sheet1.write("A1", "Título")

planilhaCriada.close()
os.startfile(caminhoArquivo)
```

---

### **Instalar openpyxl**
```jupyter
!pip install openpyxl

from openpyxl import load_workbook

#Determina o caminho da planilha
caminhoArquivo = 'C:\\Users\\PC\\NomePlanilha.xlsx'

#Define o objeto planilhaSelecionada como abertura da planilha no caminho caminhoArquivo
planilhaSelecionada = load_workbook(caminhoArquivo)

#Seleciona a aba AbaDaPlanilha da planilha NomePlanilha -> planilhaSelecionada
abaSelecionada = planilhaSelecionada['AbaDaPlanilha']
```

---

### **Loops**
```jupyter
for contador in range(2, len(planilha['A']) + 1):

    #Substitui o valor de novoProcesso a cada nova linha da coluna A
    novoProcesso = planilhaSelecionada['A%s' % contador].value

    #Substitui o valor de novoExercicio a cada nova linha da coluna B
    novoExercicio = planilhaSelecionada['B%s' % contador].value

    rodarNavegador.find_element_by_name("idHTML1").send_keys(novoProcesso)
    tempoEspera.sleep(1)#Aguarda um segundo
    rodarNavegador.find_element_by_name("idHTML2").send_keys(novoExercicio)
    pyTimeout.sleep(1)#Aguarda um segundo

    variavelArmazenar = rodarNavegador.find_elements_by_xpath('idHTML3')[0].text
```

---

### **Selecionar Aba da Planilha**
```jupyter
#Seleciona a aba abaPlanilha da planilha planilhaSelecionada
abaPlanilha = planilhaSelecionada['Aba']
```

---

### **Encontrar Célula Vazia**
```jupyter
#Seleciona a aba abaPlanilha da planilha planilhaSelecionada
abaPlanilha = planilhaSelecionada['Aba']

#Determina as células a partir de coluna + última linha em branco [A2, B2]
linhasAba = len(abaPlanilha['A']) + 1
```

---

### **Salvar Planilha e Abrir**
```jupyter
#Salva o arquivo
nomePlanilha.save(filename=caminhoArquivo)

#Abre o arquivo para visualização
os.startfile(caminhoArquivo)
```

---

### **Indexando Dados**
```jupyter
#Dando refresh na página com Enter
rodarNavegador.find_element_by_name("btnSubmit").send_keys(Keys.RETURN)

variavelDado1 = rodarNavegador.find_elements_by_xpath('idHTML1')[0].text
variavelDado2 = rodarNavegador.find_elements_by_xpath('idHTML2')[0].text
variavelDado3 = rodarNavegador.find_elements_by_xpath('idHTML3')[0].text
variavelDado4 = rodarNavegador.find_elements_by_xpath('idHTML4')[0].text

#Seleciona a aba abaPlanilha da planilha planilhaSelecionada
abaPlanilha = planilhaSelecionada['Aba']

#Determina as células a partir de coluna + última linha em branco [A2, B2]
linhasAba = len(abaPlanilha['A']) + 1

colunaA = "A" + str(linhasAba)
colunaB = "B" + str(linhasAba)
colunaC = "C" + str(linhasAba)
colunaD = "D" + str(linhasAba)

#Indexa os dados alocados nas variáveis às colunas correspondentes
abaPlanilha[colunaA] = variavelDado1
abaPlanilha[colunaB] = variavelDado2
abaPlanilha[colunaC] = variavelDado3
abaPlanilha[colunaD] = variavelDado4
```

---
---
