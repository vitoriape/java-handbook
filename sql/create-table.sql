CREATE TABLE tb_patrimonios 
(
CONSTRAINT id_patrimonio_pk PRIMARY KEY (id_patrimonio),
id_patrimonio VARCHAR(9) NOT NULL,

denominacao VARCHAR(30) NOT NULL,

status_ocupacao CHAR(15) NOT NULL,
CONSTRAINT status_ocupacao FOREIGN KEY (status_ocupacao) REFERENCES tb_avaliacao(status)
);
