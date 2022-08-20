Guia Latex
==========
<!--ts-->
* [Figuras](#figuras)
* [Tabelas](#tabelas)
    * [Packages](#packages)
    * [Simples](#simples)
    * [Simples Justificada](#simples-justificada)
    * [Colorida](#colorida)
* [Referências](#referências)
<!--te-->

---
---

## **Figuras**
```tex
\documentclass[a4paper,10pt,titlepage]{article}
\usepackage[brazilian]{babel}
\usepackage[utf8]{inputenc}
\usepackage[ruled,linesnumbered]{algorithm2e}
\usepackage[table,xcdraw]{xcolor}
\usepackage{graphics} 
\usepackage{epsfig} 
\usepackage{amsmath} 
\usepackage{amssymb}  
\usepackage{nicefrac}
\usepackage{subfig}
\usepackage{setspace}
\usepackage{microtype}
\usepackage{color}
\usepackage{amsthm}
\usepackage{listings,xcolor}
\usepackage{ragged2e}
\usepackage{times}
\usepackage{multicol}
\usepackage{tabularx}
\usepackage{tikz}
\usetikzlibrary{shapes, arrows}
\usepackage[utf8]{inputenc}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\usepackage{geometry}
\geometry{
 a4paper,
 total={170mm,257mm},
 left=20mm,
 top=20mm,
 }
 
\begin{document}
 
\begin{figure}[ht]\caption{Gráfico - Relatório de Vacância}
    \centering
        \includegraphics[scale = 0.5]{images/relatorio-vacancia.png}
        \label{figure:tiposdeinovacao}
\end{figure}
\begin{flushleft}
    \begin{small}
        Fonte: adaptado de Vitória Peçanha de Araújo (2021).\\
    \end{small}
\end{flushleft}
 
\end{document}
```

>---

## **Tabelas**
### **Packages**
```tex
\usepackage[table,xcdraw]{xcolor}
\usepackage{graphics} 
\usepackage{epsfig} 
\usepackage{amsmath} 
\usepackage{amssymb}  
\usepackage{nicefrac}
\usepackage{subfig}
\usepackage{setspace}
\usepackage{microtype}
\usepackage{color}
\usepackage{amsthm}
\usepackage{listings,xcolor}
\usepackage{ragged2e}
\usepackage{times}
\usepackage{multicol}
\usepackage{tabularx}
```

### **Simples**
```tex
\begin{document}
\begin{onehalfspacing}
    \renewcommand\tabularxcolumn[1]{>{\Centering}m{#1}} 
    \begin{table}[ht]
        \begin{center}
            \begin{large}
                \caption{Tema 01}
                \begin{tabular}{r|lr}
                    \hline
                    \textbf{Título 1} & \textbf{Título 2} \\
                    \hline
                    Definição & Descrição, descrição \\
                    Descrição & Definição   \\
                    \hline
                \end{tabular}
            \end{large}
        \end{center}
   \end{table}
\end{onehalfspacing}
\end{document}
```

### **Simples Justificada**
```tex
\begin{document}
\begin{onehalfspacing}
    \renewcommand\tabularxcolumn[1]{>{\Centering}m{#1}} 
    \begin{table}[ht]
        \begin{center}
            \begin{large}
                \caption{Tema 02}
                \begin{tabular}{r|lr}
                    \hline
                    \textbf{Título 3} & \textbf{Título 4} \\
                    \hline
                    Descrição, descrição & Definição, definição \\
                    Tópico, Tópico & Temática, temática \\
                    Descrição, descrição & Definição, definição   \\
                    Tópico, Tópico & Temática, temática \\
                    Descrição, descrição & Definição, definição \\
                    Tópico, Tópico & Temática, temática   \\
                    Descrição, descrição & Definição, definição \\
                    \hline
                \end{tabular}
            \end{large}
        \end{center}
    \end{table}
\end{onehalfspacing}
\end{document}
```

### **Colorida**
```tex
\begin{document}
\begin{onehalfspacing}
    \renewcommand\tabularxcolumn[1]{>{\Centering}m{#1}} 
        \begin{table}[ht]
        \caption{Tabela de exemplo de tema}
            \begin{center}\large
                \begin{tabularx}{\textwidth}{|X|X|}
                    \hline
                    \textbf{Texto 1} \cellcolor{black!20} & \textbf{Texto 2} \cellcolor{black!20}  \\
                    \hline
                    Texto. Texto. Texto. Texto. Texto. Texto. Texto. Texto. Texto. \cellcolor{black!5} & \textbf{Texto 3}
                        
                    Descrição, descrição, descrição
                    
                    \textbf{Texto 4}
                        
                    Descrição - Descrição
                    Descrição - Descrição

                    \textbf{Texto 5}
                        
                    Dados - Dados, dados
                        
                    Dados - Dados, dados

                    \textbf{Texto 6}
                        
                    000×000

                    \textbf{Texto 7}
                        
                    Descrição, descrição, descrição AAAA 1.0 \cellcolor{black!5} \\
                \hline
            \end{tabularx}
        \end{center}
        \begin{small}
            Fonte: adaptado de Autor (2021).\\
        \end{small}
    \end{table}
\end{onehalfspacing}
\end{document}
```

>---

## **Referências**
```tex
\begin{document}
 
 \begin{justify}
    \begin{center}
        \begin{Large}
            REFERÊNCIAS
        \end{Large}
    \end{center}
\end{justify}

\begin{onehalfspacing}
    \begin{justify}
        \begin{large}        
            \noindent [1] SOBRENOME, Nome Abreviado. \textbf{Título:} subtítulo (se houver). Nome do site, ano. Disponível em: $\leq$(link)$\geq$. Acesso em: 09 nov. 2021..\\[0.3cm]
            
            \noindent [2] Nome do site. \textbf{Título:} subtítulo (se houver). Nome do site, ano. Disponível em: $\leq$(link)$\geq$. Acesso em: 09 nov. 2021.
        \end{large}
    \end{justify}
\end{onehalfspacing}

% |LIVRO COM UM AUTOR|
% [1] SOBRENOME, Nome Abreviado. Título: subtítulo (se houver). Edição (se houver). Local de publicação: Editora, data de publicação da obra.

% |LIVRO COM ATÉ 3 AUTORES|
% SOBRENOME, Nome Abreviado; SOBRENOME, Nome Abreviado. Título: subtítulo (se houver). Edição (se houver). Local de publicação: Editora, data de publicação da obra.

% |LIVRO COM MAIS DE 3 AUTORES|
% SOBRENOME, Nome Abreviado. et al. Título: subtítulo (se houver). Edição (se houver). Local de publicação: Editora, data de publicação da obra.

% |LIVRO COM AUTOR DESCONHECIDO|
% TÍTULO EM CAIXA ALTA – Cidade – Editora – ano de publicação – página

% |ARTIGO ONLINE|
% SOBRENOME, Nome Abreviado. Título: subtítulo (se houver). Nome do site, ano. Disponível em: (link). Acesso em: (data).

% |ARTIGO ONLINE SEM AUTOR|
% Nome do site. Título: subtítulo (se houver). Nome do site, ano. Disponível em: (link). Acesso em: (data).

% |HOMEPAGE|
% AUTOR OU ORGANIZAÇÃO. Nome do site, ano. Ementa (descrição). Disponível em: <endereço completo>. Acesso em: dia, mês e ano.

% |TESE|
% SOBRENOME, nome. Título: subtítulo. Ano de apresentação. Número de folhas ou volumes. (Categoria e área de concentração) – Instituição, Local, ano da defesa.

\end{document}
```