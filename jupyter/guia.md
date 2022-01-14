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
     * [Inserindo Dados](#inserindo-dados)
     * [Loops](#loops)
     * [Selecionar Aba da Planilha](#selecionar-aba-da-planilha)
     * [Encontrar Célula Vazia](#encontrar-célula-vazia)
     * [Salvar Planilha e Abrir](#salvar-planilha-e-abrir)
     * [Indexando Dados](#indexando-dados)
     * [Alterações Gráficas](#alterações-gráficas)
     * [Inserindo Fórmulas](#inserindo-fórmulas)
     * [Inserindo Imagens](#inserindo-imagens)
     * [Formatação Condicional](#formatação-condicional)
     * [Criando Gráficos](#criando-gráficos)
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

import xlsxwriter as xlsxwriterScript
import os

#Determina o caminho da planilha
caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'

#Define a planilha criada e atribui à ela a biblioteca xlsxwriter
planilhaCriada = xlsxwriterScript.Workbook(caminhoArquivo)

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

### **Inserindo Dados**
```jupyter
insereDados = [
      ["Coluna 1", "Coluna 2", "Coluna 3", "Coluna 4"],
      [15, 20, 55, 75],
      [80, 90, 35, 45],
]  

#A partir da terceira linha (2,) e segunda coluna (1,) insere os dados linha por linha da variável insereDados
for linha, range in enumerate(insereDados):
    abaPlanilha.write_row(linha + 2, 1, range)
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

### **Alterações Gráficas**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
abaPlanilha = planilhaSelecionada.add_worksheet()


#Delimitando a cor de fundo
corFundo = planilhaSelecionada.add_format({'fg_color':'yellow'})

#Delimitando a cor da fonte
corFonte = planilhaSelecionada.add_format()
corFonte.set_format_color('blue')

#Adicionando na planilha
abaPlanilha.write("A1", "Célula colorida", corFundo)
abaPlanilha.write("A2", "Frase colorida", corFonte)

#Configurações avançadas
configSheet = planilhaSelecionada.add_format({
              #Centralizar vertical:
              'valign' : 'vcenter',

              #Centralizar horizontal:
              'align' : 'center',

              #Tamanho da borda:
              'border' : 6,

              #Cor da fonte:
              'font_color' : '#99ffff',

              #Negrito:
              'bold' : True,       

              #Tamanho da fonte:    
              'size' : 30,

              #Cor da célula (bg_color):     
              'fg_color' : 'navy'})     

abaPlanilha.write("A3", "Célula configurada", configSheet)

#Tamanho das colunas = 15cm
abaPlanilha.set_column('A:C', 15)

#Mesclando células
abaPlanilha.merge_range('B1:B2', 'Célula mesclada', configSheet)
```

---

### **Inserindo Fórmulas**
```jupyter
abaPlanilha.write("A1", "Coluna 1")
abaPlanilha.write("A2", 10)
abaPlanilha.write("A3", 20)
abaPlanilha.write("A4", "Concatenando")

abaPlanilha.write("B1", "Coluna 2")
abaPlanilha.write("B2", 40)
abaPlanilha.write("B3", 50)
abaPlanilha.write("B4", "Dados")

abaPlanilha.write_formula("C1", "Resultado")
abaPlanilha.write_formula("C2", "=SOMA(A2,B2)")
abaPlanilha.write_formula("C3", "=B3*A3")
abaPlanilha.write_formula("C4", '=CONCATENATE(A4," ",B4)')
```

---

### **Inserindo Imagens**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
abaPlanilha = planilhaSelecionada.add_worksheet()

#Insere a imagem na célula B5
abaPlanilha.insert_image('B5', 'C:\\Users\\PC\\CaminhoPasta\\nomeArquivo.png')
```

---

### **Formatação Condicional**

- **Com Cores**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
abaPlanilha = planilhaSelecionada.add_worksheet()

formatoMaior50 = planilhaSelecionada.add_format({
                'bg_color' : 'green',
                'font_color' : 'white'})

formatoMenor50 = planilhaSelecionada.add_format({
                'bg_color' : 'red',
                'font_color' : 'white'})   


insereDados = [
      ["Coluna 1", "Coluna 2", "Coluna 3", "Coluna 4"],
      [15, 20, 55, 75],
      [80, 90, 35, 45],
      [31, 41, 59, 79],
      [59, 59, 11, 21],
]  

#A partir da terceira linha (2,) e segunda coluna (1,) insere os dados linha por linha da variável insereDados
for linha, range in enumerate(insereDados):
    abaPlanilha.write_row(linha + 2, 1, range)

abaPlanilha.conditional_format('B4:E7', {
                              'type' : 'cell', 
                              'criteria' : '>=',
                              'value' : 50,
                              'format' : formatoMaior50})
                          
abaPlanilha.conditional_format('B4:E7', {
                              'type' : 'cell',
                              'criteria' : '<',
                              'value' : 50,
                              'format' : formatoMenor50})
```

---

- **Com Ícones**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
abaPlanilha = planilhaSelecionada.add_worksheet()

insereDados = [
      ["Coluna 1", "Coluna 2", "Coluna 3", "Coluna 4"],
      [15, 20, 55, 75],
      [80, 90, 35, 45],
      [31, 41, 59, 79],
      [59, 59, 11, 21],
      [13, 23, 58, 78],
]  

#A partir da terceira linha (2,) e segunda coluna (1,) insere os dados linha por linha da variável insereDados
for linha, range in enumerate(insereDados):
    abaPlanilha.write_row(linha + 2, 1, range)

abaPlanilha.conditional_format('B4:E4', {
                              'type' : 'icon_set', 
                              'icon_style' : '3_traffic_lights'})

abaPlanilha.conditional_format('B5:E5', {
                              'type' : 'icon_set',
                              'icon_style' : '3_traffic_lights',
                              'reverse_icons' : True})

abaPlanilha.conditional_format('B6:E6', {
                              'type' : 'icon_set',
                              'icon_style' : '3_arrows'})

abaPlanilha.conditional_format('B7:E7', {
                              'type' : 'icon_set',
                              'icon_style' : '4_arrows'})

abaPlanilha.conditional_format('B8:E8', {
                              'type' : 'icon_set', 
                              'icon_style' : '5_ratings'})
```
---

### **Criando Gráficos**

- **Gráficos de Colunas**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
guiaPlanilha = planilhaSelecionada.add_worksheet("Resumo")

# Inserindo dados
cabeçalho = ['Corretores', 'Comissões']
valores = [
  ["Roberta", "Bianca", "Roberval", "Matheus", "Diva"],
  ["R$ 500,00", "R$ 1.500,00", "R$5.000,00", "R$750,00", "R$2.500,00"]
]

guiaPlanilha.write_row('A1', cabeçalho)
guiaPlanilha.write_column('A2', valores[0])
guiaPlanilha.write_column('B2', valores[1])

# Criando o gráfico
graficoColunas = planilhaSelecionada.add_chart({'type' : 'column'})

# Configuração das séries
graficoColunas.add_series({
    'name' : '=Resumo!$B$1',
    'categories' : '=Resumo!$A$2:$A$7',
    'values' : '=Resumo!$A$2:$B$7',
})

# Definindo eixos
graficoColunas.set_title({'name' : 'Relatório de Comissões'})
graficoColunas.set_x_axis({'name' : 'Corretores'})
graficoColunas.set_y_axis({'name' : 'Comissões'})

# Delimitando o estilo
graficoColunas.set_style(11)

# Inserindo gráfico com deslocamento x e y
guiaPlanilha.insert_chart('D2', graficoColunas, {'x_offset' : 25, 'y_offset': 10})
```

- **Gráficos de Colunas**
```jupyter
import xlsxwriter as xlsxwriterScript

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'
planilhaSelecionada = xlsxwriterScript.Workbook(caminhoArquivo)
guiaPlanilha = planilhaSelecionada.add_worksheet("Resumo")

# Inserindo dados
cabeçalho = ['Corretores', 'Comissões']
valores = [
  ["Roberta", "Bianca", "Roberval", "Matheus", "Diva"],
  ["R$ 500,00", "R$ 1.500,00", "R$5.000,00", "R$750,00", "R$2.500,00"]
]

guiaPlanilha.write_row('A1', cabeçalho)
guiaPlanilha.write_column('A2', valores[0])
guiaPlanilha.write_column('B2', valores[1])

# Criando o gráfico
graficoEmpilhado = planilhaSelecionada.add_chart({'type' : 'area', 'subtype' : 'stacked'})

# Configuração das séries
graficoEmpilhado.add_series({
    'name' : '=Resumo!$B$1',
    'categories' : '=Resumo!$A$2:$A$7',
    'values' : '=Resumo!$A$2:$B$7',
})

# Definindo eixos
graficoEmpilhado.set_title({'name' : 'Relatório de Comissões 2'})
graficoEmpilhado.set_x_axis({'name' : 'Corretores'})
graficoEmpilhado.set_y_axis({'name' : 'Comissões'})

# Delimitando o estilo
graficoEmpilhado.set_style(12)

# Inserindo gráfico com deslocamento x e y
guiaPlanilha.insert_chart('L2', graficoEmpilhado, {'x_offset' : 25, 'y_offset': 10})
```

---
---
