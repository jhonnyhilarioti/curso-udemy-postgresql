SELECT * FROM clientes;

CREATE TABLE clientes_teste (
	id_cliente SERIAL UNIQUE NOT NULL PRIMARY KEY,
	nome_cliente varchar(100) NOT NULL
);

/**
 * copiando os dados de uma tabela para outra
 */
INSERT INTO clientes_teste (id_cliente,nome_cliente) SELECT id_cliente,nome_cliente FROM clientes;

SELECT * FROM clientes_teste;