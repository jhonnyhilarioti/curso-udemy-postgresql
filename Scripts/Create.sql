ROLLBACK;

CREATE TABLE IF NOT EXISTS funcionarios (
	id_funcionario SERIAL UNIQUE  NOT NULL PRIMARY KEY,
	nome_funcionario varchar(100) NOT NULL,
	cargo_funcionario varchar(50) NOT NULL,
	data_contratacao timestamp NULL,
	salario DOUBLE PRECISION NOT NULL,
	comissao DOUBLE PRECISION NULL);

DROP TABLE funcionarios;
	
INSERT INTO funcionarios(nome_funcionario, cargo_funcionario, data_contratacao, salario, comissao) 
	VALUES 
		('Gomes',    'Atendente', '2013-03-28', 3000.00, null),
		('Teixeira', 'Atendente', '2013-03-28', 3000.00, 5000.00),
		('Valdir',   'Atendente', '2013-03-28', 3000.00, 7000.00),
		('Pedro',    'Atendente', '2013-03-28', 5000.00, null),
		('Carlos',   'Atendente', '2013-03-28', 3000.00, 22000.00),
		('Thiago',   'Atendente', '2013-03-28', 7000.00, 9000.00),
		('Valmir',   'Atendente', '2013-03-28', 3000.00, null),
		('Trindade', 'Atendente', '2013-03-28', 3000.00, null),
		('Ramos',    'Atendente', '2013-03-28', 9000.00, null);

SELECT * FROM funcionarios;