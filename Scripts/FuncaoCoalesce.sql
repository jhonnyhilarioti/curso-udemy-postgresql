SELECT * FROM produtos;
SELECT * FROM filiais;

INSERT INTO produtos (id_produto, nome_produto, descricao_produto, preco, qtd_estoque)
	VALUES (8,'Aroz', 'Pacote de 5kg de arroz', 11.45, NULL);

/**
 * Substitui os valores null por 0
 */
SELECT COALESCE (qtd_estoque,0) FROM produtos;


SELECT * FROM funcionarios;

/**
 * O comando abaixo busca todos os nomes de funcionario onde a comissão for menor que a do Thiago, incluindo valores null
 */
SELECT nome_funcionario, comissao FROM funcionarios 
	WHERE COALESCE(comissao,0) < (SELECT comissao FROM funcionarios WHERE nome_funcionario = 'Thiago');


