SELECT * FROM produtos;
SELECT * FROM pedidos;

/**
 * Junção de tabelas sem JOIN
 */
SELECT p.nome_produto,
	   pd.data_compra
	FROM produtos p,
		 pedidos pd
	WHERE p.id_produto = pd.id_produto;

CREATE TABLE 