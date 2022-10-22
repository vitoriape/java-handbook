CREATE TABLE cidade (nome TEXT, populacao FLOAT)
CREATE TABLE capital (uf CHAR(2)) INHERITS (cidade)/*Determina a tabela capital como "filha" da tabela cidade