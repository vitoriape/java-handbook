Guia DAX
=========
<!--ts-->
* [Somar com Filtros](#somar-com-filtros)
<!--te-->

---
---

## **Somar com Filtros**
```dax
Soma Filtrada = CALCULATE(SUM('FontedeDados'[ValorTotal]),
                    'FontedeDados'[Tipo]
                        IN { "VALOR 1",
                            "VALOR 2",
                            "VALOR 3",
                            "VALOR 4",
                            "VALOR 5" })
```