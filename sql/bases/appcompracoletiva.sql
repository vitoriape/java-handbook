CREATE DATABASE COMPRACOLETIVA;

USE COMPRACOLETIVA;

CREATE TABLE empreendedor (
	idempreend INT unsigned not null auto_increment,
	nome varchar (50) not null,
	cpf_cnpj varchar (20) not null,
	Logradouro varchar (200) not null,
	cidade varchar (50) not null,
	estado char (2) not null,
	email varchar (100) not null,
	telefone char (11) not null,
	statusempreend ENUM ('0','1'),
	primary key(idempreend)
	);

CREATE TABLE fornecedor (
	idfornecedor int unsigned not null auto_increment,
    nome varchar(100) not null,
    cnpj varchar(20) not null,
    Logradouro varchar(200) not null,
    cidade varchar (30) not null,
    Estado char (2) not null,
    email varchar(50) not null,
    telefone char(11) not null,
    statusfornecedor ENUM ('0','1'),
    primary key (idfornecedor)
    );

CREATE TABLE produto(
	idproduto int unsigned not null auto_increment,
	id_fornecedor int unsigned,
    tipo_produto varchar(50) not null,
    estoque int unsigned not null,
    pedido_minimo int unsigned not null,
    preco double unsigned not null, 
    primary key (idproduto)
    );

CREATE TABLE grupo(
	idgrupo int unsigned not null auto_increment,
	id_produto int unsigned,
	datainicio varchar (10) not null,
    datafim varchar (10) not null,
    primary key (idgrupo)
    );

CREATE TABLE empreend_grupo(
	id_empreend int unsigned,
	id_grupo int unsigned,
	primary key (id_empreend,id_grupo)
	);

CREATE TABLE formapagamento(
idcartao int unsigned not null auto_increment,
id_empreend int unsigned,
Numero char (16),
validade char (5),
cvv char (3),
primary key (idcartao)
);


CREATE TABLE venda(
idvenda int unsigned not null auto_increment,
id_grupo int unsigned,
id_empreend int unsigned,
datapagamento varchar (10),
quantidade INT unsigned,
primary key (idvenda)
);

ALTER TABLE produto
ADD CONSTRAINT fk_produto_fornecedor
FOREIGN KEY(id_fornecedor)
REFERENCES fornecedor(idfornecedor);

ALTER TABLE grupo
ADD CONSTRAINT fk_grupocompra_produto
FOREIGN KEY (id_produto)
REFERENCES produto(idproduto);

ALTER TABLE empreend_grupo
ADD CONSTRAINT fk_empreendgrupo_empreend
FOREIGN KEY (id_empreend)
REFERENCES empreendedor(idempreend);

ALTER TABLE empreend_grupo
ADD CONSTRAINT fk_empreendgrupo_grupo
FOREIGN KEY (id_grupo)
REFERENCES grupo(idgrupo);

ALTER TABLE formapagamento
ADD CONSTRAINT fk_formapgto_empreend
FOREIGN KEY (id_empreend)
REFERENCES empreendedor(idempreend);

ALTER TABLE venda
ADD CONSTRAINT fk_venda_grupo
FOREIGN KEY (id_grupo)
REFERENCES grupo(idgrupo);

ALTER TABLE venda
ADD CONSTRAINT fk_venda_empreend
FOREIGN KEY (id_empreend)
REFERENCES empreendedor(idempreend);


INSERT INTO empreendedor VALUES (Null,'DOG ltda','01.023.345/0001-24','Rua dos Hot Dogs, 123','São Paulo','SP','dog_ltda@gmail.com','11998766541','1');
INSERT INTO empreendedor VALUES (Null,'Pastel Alvorada','02.345.376/0001-26','Rua dos Lanches, 45','São Paulo','SP','alvorada@gmail.com','11952146721','1');
INSERT INTO empreendedor VALUES (Null,'Açougue do Bira','01.002.415/0001-01','Avenida Churras, 99','São Paulo','SP','biracarnes@gmail.com','11965471546','1');
INSERT INTO empreendedor VALUES (Null,'Bar do Doutor Sergio','345.148.736-87','Avenida dos Botecos, 129','Pirassununga','SP','doutorsergio@hotmail.com','11961485151','1');
INSERT INTO empreendedor VALUES (Null,'Ana Burguer','01.444.721/0001-48','Rua dos Lanches, 97','São Paulo','SP','ana_burguer@gmail.com','11964872357','1');
INSERT INTO empreendedor VALUES (Null,'Espetinhos Karaoke','02.895.854/0001-55','Rua Agitada, 884','São Paulo','SP','lalala@outlook.com','1144803212','1');
INSERT INTO empreendedor VALUES (Null,'Mercadinho da Maria','01.440.123/0001-01','Rua da Concorrência, 23','São Paulo','SP','maria_mei@yahoo.com','11989553300','1');
INSERT INTO empreendedor VALUES (Null,'Podrão Burguer','01.221.854/0001-22','Rua Agitada, 912','São Paulo','SP','burguer_temperado@hotmail.com','11944125541','1');
INSERT INTO empreendedor VALUES (Null,'Pão de Queijo Elias','02.654.350/0001-99','Praça da Sé, 10','São Paulo','SP','paozinho_quentinho@outlook.com','11984545514','1');
INSERT INTO empreendedor VALUES (Null,'Padaria da Tia Maria','01.784.568/0001-45','Rua da Concorrência, 26','São Paulo','SP','padaria_paozinho@gmail.com','11974521169','1');

INSERT INTO fornecedor VALUES (Null,'Frigorífica ABC Ltda','50404580000160','Avenida de Carnes, 123','São Paulo','SP','frigabc@gmail.com','11921487962','1');
INSERT INTO fornecedor VALUES (Null,'Massas Ltda','68524278000130','Rua Fritura, 18','São Paulo','SP','massas@gmail.com','11964872169','1');
INSERT INTO fornecedor VALUES (Null,'Bebidas Boas Ltda','37856548000158','Rua da Cana, 2487','Pirassununga','SP','bebidasboasa@gmail.com','11969521478','1');
INSERT INTO fornecedor VALUES (Null,'Pães Geronimo Ltda','45782132000147','Rua do Trigo, 136','São Paulo','SP','geronimo@gmail.com','11993541587','1');
INSERT INTO fornecedor VALUES (Null,'Condimentos Jones Ltda','78950545000138','Avenida Mostarda, 10','São Paulo','SP','jonescondimentos@gmail.com','11932548761','1');
INSERT INTO fornecedor VALUES (Null,'Laticinios Fazenda Ltda','75653245000142','Avenida do Glicerio, 110','São Paulo','SP','laticiniosfazenda@outlook.com','11955324565','1');
INSERT INTO fornecedor VALUES (Null,'Silvio Comércio Alimentícios','50380407000160','Rua Peixoto, 36','Cunha','SP','scalimenticios@gmail.com','12986541200','1');
INSERT INTO fornecedor VALUES (Null,'Atacadão Paulista','66983535000106','Avenida São Paulo, 3652','Campinas','SP','atacadaosp@gmail.com','19932150014','1');
INSERT INTO fornecedor VALUES (Null,'JMR Distribuidores','51769021000107','Rua Industrial, 458','Uberaba','MG','jmr@hotmail.com','34925341433','1');
INSERT INTO fornecedor VALUES (Null,'Irmãos Fausto & Lima ','93067959000125','Rodovia dos Romeiros, 786','Volta Redonda','RJ','irmaosfl@yahoo.com','24975631456','1');
INSERT INTO fornecedor VALUES (Null,'Empório Saúde','76738661000180','Estrada Nossa Senhora, 961','Salvador','BA','emporiosaude@gmail.com','71903216352','1');
INSERT INTO fornecedor VALUES (Null,'Minas Gerais Comercial','17064006000125','Rua Canário, 85','Belo Horizonte','MG','minascomercial@hotmail.com','31935027451','1');
INSERT INTO fornecedor VALUES (Null,'Amazonas Norte SA','28675913000127','Avenida Nortista, 9875','Manaus','AM','amazonassa@yahoo.com','92974857854','1');
INSERT INTO fornecedor VALUES (Null,'Pernambucano Vendas','91135573000188','Estrada Olinda, 876','Olinda','PE','vendas@pernambucano.com','81935687412','1');
INSERT INTO fornecedor VALUES (Null,'RN Cafés e Quitandas','46690512000128','Rua do Comércio, 64','Maringá','PR','rn@cafesequitandas.com','44935201514','1');
INSERT INTO fornecedor VALUES (Null,'Farias Indústria e Revendas','95768288000155','Rua XV de Novembro, 785','Mossoró','RN','farias@gmail.com','84975410036','1');

INSERT INTO produto VALUES (Null,'1','Caju',150,50,10.00);
INSERT INTO produto VALUES (Null,'1','Manga',200,50,9.00);
INSERT INTO produto VALUES (Null,'1','Laranja',150,50,4.00);
INSERT INTO produto VALUES (Null,'1','Banana',200,50,8.00);
INSERT INTO produto VALUES (Null,'1','Pêra',150,50,6.85);
INSERT INTO produto VALUES (Null,'1','Figo',180,50,5.74);
INSERT INTO produto VALUES (Null,'1','Caqui',130,50,6.75);
INSERT INTO produto VALUES (Null,'1','Abacaxi',230,50,3.25);
INSERT INTO produto VALUES (Null,'1','Limão',120,50,44872);
INSERT INTO produto VALUES (Null,'1','Melancia',100,50,8.00);
INSERT INTO produto VALUES (Null,'2','Hamburguer',170,50,15.81);
INSERT INTO produto VALUES (Null,'2','Salsicha',140,50,12.99);
INSERT INTO produto VALUES (Null,'2','Apresuntado',100,50,24.90);
INSERT INTO produto VALUES (Null,'2','Presunto',110,50,27.90);
INSERT INTO produto VALUES (Null,'2','Salame',150,50,66.80);
INSERT INTO produto VALUES (Null,'3','Contra Filé',145,50,60.00);
INSERT INTO produto VALUES (Null,'3','Coxão Duro',120,50,49.90);
INSERT INTO produto VALUES (Null,'3','Coxão Mole',130,50,48.90);
INSERT INTO produto VALUES (Null,'4','Filé de Frango',140,50,27.90);
INSERT INTO produto VALUES (Null,'4','Tulipa',120,50,28.55);
INSERT INTO produto VALUES (Null,'4','Sobrecoxa',111,50,22.00);
INSERT INTO produto VALUES (Null,'5','Mussarela',122,50,44.80);
INSERT INTO produto VALUES (Null,'5','Parmesão',333,50,57.80);
INSERT INTO produto VALUES (Null,'5','Parmesão Ralado',145,50,59.25);
INSERT INTO produto VALUES (Null,'5','Queijo Montanhes',150,50,64.50);
INSERT INTO produto VALUES (Null,'6','Molho de Tomate',230,50,44836);
INSERT INTO produto VALUES (Null,'6','Molho Inglês',215,50,2.50);
INSERT INTO produto VALUES (Null,'6','Shoyu',100,50,4.52);
INSERT INTO produto VALUES (Null,'7','Batata',230,50,6.70);
INSERT INTO produto VALUES (Null,'7','Batata Palha',200,50,4.80);
INSERT INTO produto VALUES (Null,'7','Batata Chips',200,50,4.72);
INSERT INTO produto VALUES (Null,'8','Orégano',120,50,3.00);
INSERT INTO produto VALUES (Null,'8','Cheiro Verde',110,50,3.40);
INSERT INTO produto VALUES (Null,'8','Alecrim',111,50,4.25);
INSERT INTO produto VALUES (Null,'8','Pimenta do Reino',110,50,1.90);
INSERT INTO produto VALUES (Null,'9','Manteiga Com Sal',100,50,44845);
INSERT INTO produto VALUES (Null,'9','Manteiga Sem Sal',100,50,44845);
INSERT INTO produto VALUES (Null,'9','Manteiga de Garrafa',110,50,15.90);
INSERT INTO produto VALUES (Null,'10','Pão de Hamburguer',280,50,15.00);

INSERT INTO grupo VALUES (Null,'22','06/04/2022','06/08/2022');
INSERT INTO grupo VALUES (Null,'16','25/06/2022','30/06/2022');
INSERT INTO grupo VALUES (Null,'19','07/03/2022','07/10/2022');
INSERT INTO grupo VALUES (Null,'11','18/08/2022','28/07/2022');
INSERT INTO grupo VALUES (Null,'29','08/12/2022','19/08/2022');
INSERT INTO grupo VALUES (Null,'14','21/08/2022','29/08/2022');
INSERT INTO grupo VALUES (Null,'12','09/02/2022','09/07/2022');
INSERT INTO grupo VALUES (Null,'30','09/09/2022','15/09/2022');
INSERT INTO grupo VALUES (Null,'35','10/07/2022','10/11/2022');
INSERT INTO grupo VALUES (Null,'39','10/08/2022','14/10/2022');

INSERT INTO empreend_grupo VALUES (1,1);
INSERT INTO empreend_grupo VALUES (4,1);
INSERT INTO empreend_grupo VALUES (6,1);
INSERT INTO empreend_grupo VALUES (8,1);
INSERT INTO empreend_grupo VALUES (10,1);
INSERT INTO empreend_grupo VALUES (7,1);
INSERT INTO empreend_grupo VALUES (1,2);
INSERT INTO empreend_grupo VALUES (3,2);
INSERT INTO empreend_grupo VALUES (5,2);
INSERT INTO empreend_grupo VALUES (7,2);
INSERT INTO empreend_grupo VALUES (9,2);
INSERT INTO empreend_grupo VALUES (6,2);
INSERT INTO empreend_grupo VALUES (1,3);
INSERT INTO empreend_grupo VALUES (3,3);
INSERT INTO empreend_grupo VALUES (6,3);
INSERT INTO empreend_grupo VALUES (8,3);
INSERT INTO empreend_grupo VALUES (9,3);
INSERT INTO empreend_grupo VALUES (2,4);
INSERT INTO empreend_grupo VALUES (4,4);
INSERT INTO empreend_grupo VALUES (7,4);
INSERT INTO empreend_grupo VALUES (9,4);
INSERT INTO empreend_grupo VALUES (6,4);
INSERT INTO empreend_grupo VALUES (1,5);
INSERT INTO empreend_grupo VALUES (3,5);
INSERT INTO empreend_grupo VALUES (6,5);
INSERT INTO empreend_grupo VALUES (8,5);
INSERT INTO empreend_grupo VALUES (2,6);
INSERT INTO empreend_grupo VALUES (4,6);
INSERT INTO empreend_grupo VALUES (8,6);
INSERT INTO empreend_grupo VALUES (10,6);
INSERT INTO empreend_grupo VALUES (2,7);
INSERT INTO empreend_grupo VALUES (4,7);
INSERT INTO empreend_grupo VALUES (6,7);
INSERT INTO empreend_grupo VALUES (8,7);
INSERT INTO empreend_grupo VALUES (10,7);
INSERT INTO empreend_grupo VALUES (1,8);
INSERT INTO empreend_grupo VALUES (3,8);
INSERT INTO empreend_grupo VALUES (5,8);
INSERT INTO empreend_grupo VALUES (7,8);
INSERT INTO empreend_grupo VALUES (9,8);
INSERT INTO empreend_grupo VALUES (1,9);
INSERT INTO empreend_grupo VALUES (3,9);
INSERT INTO empreend_grupo VALUES (4,9);
INSERT INTO empreend_grupo VALUES (6,9);
INSERT INTO empreend_grupo VALUES (7,9);
INSERT INTO empreend_grupo VALUES (1,10);
INSERT INTO empreend_grupo VALUES (3,10);
INSERT INTO empreend_grupo VALUES (5,10);
INSERT INTO empreend_grupo VALUES (2,10);
INSERT INTO empreend_grupo VALUES (6,10);
INSERT INTO empreend_grupo VALUES (8,10);

INSERT INTO formapagamento VALUES (Null,'1','6541365298567850','02/28','335');
INSERT INTO formapagamento VALUES (Null,'2','9632365298567850','05/25','225');
INSERT INTO formapagamento VALUES (Null,'3','8552136529856780','06/25','445');
INSERT INTO formapagamento VALUES (Null,'4','9874365298567850','04/22','668');
INSERT INTO formapagamento VALUES (Null,'5','6325365298567850','08/24','646');
INSERT INTO formapagamento VALUES (Null,'6','1254365298567850','07/27','352');
INSERT INTO formapagamento VALUES (Null,'7','5214365298567850','05/26','468');
INSERT INTO formapagamento VALUES (Null,'8','3233365298567850','01/23','758');
INSERT INTO formapagamento VALUES (Null,'9','6542365298567850','04/26','812');
INSERT INTO formapagamento VALUES (Null,'10','4785365298567850','05/27','705');

INSERT INTO venda VALUES (Null,'1','1','28/06/2022','9');
INSERT INTO venda VALUES (Null,'4','1','30/07/2022','10');
INSERT INTO venda VALUES (Null,'6','1','25/06/2022','13');
INSERT INTO venda VALUES (Null,'8','1','29/08/2022','10');
INSERT INTO venda VALUES (Null,'10','1','15/07/2022','9');
INSERT INTO venda VALUES (Null,'7','1','20/09/2022','10');
INSERT INTO venda VALUES (Null,'1','2','20/10/2022','9');
INSERT INTO venda VALUES (Null,'3','2','14/08/2022','10');
INSERT INTO venda VALUES (Null,'5','2','30/11/2022','13');
INSERT INTO venda VALUES (Null,'7','2','17/11/2022','10');
INSERT INTO venda VALUES (Null,'9','2','17/10/2022','10');
INSERT INTO venda VALUES (Null,'6','2','26/08/2022','13');
INSERT INTO venda VALUES (Null,'1','3','29/09/2022','9');
INSERT INTO venda VALUES (Null,'3','3','28/10/2022','10');
INSERT INTO venda VALUES (Null,'6','3','30/06/2022','13');
INSERT INTO venda VALUES (Null,'8','3','31/05/2022','10');
INSERT INTO venda VALUES (Null,'9','3','01/12/2022','10');
INSERT INTO venda VALUES (Null,'2','4','10/12/2022','9');
INSERT INTO venda VALUES (Null,'4','4','28/11/2022','10');
INSERT INTO venda VALUES (Null,'7','4','18/11/2022','10');
INSERT INTO venda VALUES (Null,'9','4','17/10/2022','10');
INSERT INTO venda VALUES (Null,'6','4','25/06/2022','13');
INSERT INTO venda VALUES (Null,'1','5','28/06/2022','9');
INSERT INTO venda VALUES (Null,'3','5','14/08/2022','10');
INSERT INTO venda VALUES (Null,'6','5','25/06/2022','13');
INSERT INTO venda VALUES (Null,'8','5','29/08/2022','10');
INSERT INTO venda VALUES (Null,'2','6','10/12/2022','9');
INSERT INTO venda VALUES (Null,'4','6','30/07/2022','10');
INSERT INTO venda VALUES (Null,'8','6','29/08/2022','10');
INSERT INTO venda VALUES (Null,'10','6','15/07/2022','9');
INSERT INTO venda VALUES (Null,'2','7','10/12/2022','9');
INSERT INTO venda VALUES (Null,'4','7','30/07/2022','10');
INSERT INTO venda VALUES (Null,'6','7','25/06/2022','13');
INSERT INTO venda VALUES (Null,'8','7','29/08/2022','10');
INSERT INTO venda VALUES (Null,'10','7','15/07/2022','9');
INSERT INTO venda VALUES (Null,'1','8','28/06/2022','9');
INSERT INTO venda VALUES (Null,'3','8','14/08/2022','10');
INSERT INTO venda VALUES (Null,'5','8','30/11/2022','13');
INSERT INTO venda VALUES (Null,'7','8','20/09/2022','10');
INSERT INTO venda VALUES (Null,'9','8','17/10/2022','10');
INSERT INTO venda VALUES (Null,'1','9','28/06/2022','9');
INSERT INTO venda VALUES (Null,'3','9','14/08/2022','10');
INSERT INTO venda VALUES (Null,'4','9','30/07/2022','10');
INSERT INTO venda VALUES (Null,'6','9','25/06/2022','13');
INSERT INTO venda VALUES (Null,'7','9','20/09/2022','10');
INSERT INTO venda VALUES (Null,'1','10','28/06/2022','9');
INSERT INTO venda VALUES (Null,'3','10','14/08/2022','10');
INSERT INTO venda VALUES (Null,'5','10','30/11/2022','13');
INSERT INTO venda VALUES (Null,'2','10','10/12/2022','9');
INSERT INTO venda VALUES (Null,'6','10','25/06/2022','13');
INSERT INTO venda VALUES (Null,'8','10','29/08/2022','10');