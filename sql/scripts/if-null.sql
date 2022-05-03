SELECT
    nomeProduto,
    quantidadeEstoque,
    IFNULL(quantidadeEstoque, 'Sem estoque!')
FROM produtos
