DELIMITER //
CREATE FUNCTION verificaEstoque(
    codigoProduto VARCHAR(15)
)

RETURN VARCHAR(10) DETERMINISTIC

BEGIN
    DECLARE nivelEstoque VARCHAR(10);
    DECLARE quantidadeDisponivel SMALLINT;
    SET quantidadeDisponivel = 0;

    SELECT quantidadeEstoque INTO quantidadeDisponivel FROM produtos WHERE codProduto = codigoProduto;

    CASE WHEN quantidadeDisponivel <= 1500 THEN
        SET nivelEstoque = 'Low';
    WHEN quantidadeDisponivel >1500 AND quantidadeDisponivel <= 6000 THEN
        SET nivelEstoque = 'Regular';
    ELSE
        SET nivelEstoque = 'High';
    END CASE;

    RETURN nivelEstoque;
END; //
DELIMITER ;

/* Calling Function */

SELECT
    codProduto 
FROM produtos
WHERE quantidadeEstoque <= 1500

SELECT verificaEstoque('001')
FROM DUAL;