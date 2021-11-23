Índice
=================
<!--ts-->
   * [Configurando um Script Jupyter](#configurando-um-script-jupyter)
   * [Operando Mouse](#operando-mouse)
   * [Operando Teclado](#operando-teclado)
   * [Manipulando Aplicações](#manipulando-aplicações)
   * [Criando Menus](#criando-menus)
<!--te-->


### Configurando um Script Jupyter

- **Importar pyautogui como variável**

```jupyter
!pip install pyautogui
import pyautogui

import pyautogui as nomeVariavel
```

- **Importar selenium como variável**
```jupyter
!pip install selenium
from selenium import webdriver

nomeVariavel = webdriver.NomeDoBrowser()
```

- **Pausar script da classe (segundos)**

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