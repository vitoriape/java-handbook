CREATE DATABASE `exemploEstoque`;
USE `exemploEstoque`;

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
    `codProduto` VARCHAR(12) NOT NULL,
    `nomeProduto` VARCHAR(55) NOT NULL,
    `quantidadeEstoque` INT(13),  

    PRIMARY KEY (`codProduto`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Data for the table `produtos` */

INSERT INTO `produtos` (
    `codProduto`,
    `nomeProduto`,
    `quantidadeEstoque`
) VALUES

('001', 'Caneta', 50);
('002', 'Garrafa', 200);
('003', 'Apostila', 540);
('004', 'Grafite', 100);
('005', 'Balde', 2);