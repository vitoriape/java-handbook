Índice
=================
<!--ts-->
   * [Instalando Bibliotecas](#instalando-bibliotecas)
     * [Importar pyautogui](#importar-pyautogui)
     * [Importar selenium](#importar-selenium)
     * [Importar xlsxwriter](#importar-xlsxwriter)
   * [Pausando um Script](#pausando-um-script)
   * [Operando Mouse](#operando-mouse)
   * [Operando Teclado](#operando-teclado)
   * [Manipulando Aplicações](#manipulando-aplicações)
   * [Criando Menus](#criando-menus)
<!--te-->

---
---

### Instalando Bibliotecas
#### **Importar pyautogui**

```jupyter
!pip install pyautogui
import pyautogui

import pyautogui as nomeVariavel
```

>---

#### **Importar selenium**
```jupyter
!pip install selenium
from selenium import webdriver

nomeVariavel = webdriver.NomeDoBrowser()
```

>---

#### **Importar xlsxwriter**
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

### Pausando um Script

```jupyter
nomeVariavel.sleep(4)
```

---

### Operando Mouse

- **Exibir posição do mouse**

```jupyter
print (nomeVariavel.position())
```

- **Mover mouse**

```jupyter
nomeVariavel.moveTo(x=0, y=0)
```

- **Clicar**

```jupyter
nomeVariavel.click(x=0, y=0)
```

---

### Operando Teclado

- **Digitar**

```jupyter
nomeVariavel.typewrite('texto')
```

- **Acionar Tecla Enter**

```jupyter
nomeVariavel.press('enter')
```

- **Acionar Atalho do Teclado**

```jupyter
nomeVariavel.hotkey('win', 'r')
```

- **Abrindo Programas pelo Win R**
```jupyter
nomeVariavel.hotkey('win', 'r')
nomeVariavel.typewrite('microsoft-edge://')
nomeVariavel.sleep(2)
nomeVariavel.press('enter')
```

---

### Manipulando Aplicações

- **Obtendo janela ativa e fechando-a**

```jupyter
novaVariavel = nomeVariavel.getActiveWindow()
novaVariavel.close()
```

>---

#### **Abrindo navegador**

>---

#### **Usando campos das aplicações**

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

### Criando Menus

- **Criando um Menu de Opções**
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