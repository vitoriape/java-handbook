### Configurando Script Jupyter

- **Importar pyautogui como variável**

```jupyter
import pyautogui as nomeVariavel
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

- Acionar Tecla Enter

```jupyter
nomeVariavel.press('enter')
```

---