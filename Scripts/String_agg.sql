CREATE TABLE departamento(
	id_departamento SERIAL UNIQUE NOT NULL PRIMARY KEY,
	nome_departamento varchar(100) NOT NULL
);

INSERT INTO departamento (nome_departamento) 
	VALUES ('dpt1'),
		   ('dpt2'),
	       ('dpt3'),
	       ('dpt4'),
       	   ('dpt5'),
	       ('dpt6'),
	       ('dpt7'),
	       ('dpt8'),
	       ('dpt9'),
	       ('dpt10');
	      
SELECT * FROM departamento;
		   

ALTER TABLE funcionarios ADD COLUMN departamento_id integer REFERENCES departamento(id_departamento);

UPDATE funcionarios SET departamento_id = 1 WHERE id_funcionario = 2;
UPDATE funcionarios SET departamento_id = 2 WHERE id_funcionario = 9;
UPDATE funcionarios SET departamento_id = 3 WHERE id_funcionario = 5;
UPDATE funcionarios SET departamento_id = 4 WHERE id_funcionario = 3;
UPDATE funcionarios SET departamento_id = 5 WHERE id_funcionario = 6;
UPDATE funcionarios SET departamento_id = 6 WHERE id_funcionario = 1;
UPDATE funcionarios SET departamento_id = 7 WHERE id_funcionario = 7;
UPDATE funcionarios SET departamento_id = 8 WHERE id_funcionario = 8;
UPDATE funcionarios SET departamento_id = 9 WHERE id_funcionario = 4;

SELECT * FROM funcionarios;

SELECT departamento_id, string_agg(nome_funcionario, ',' ) 
	AS Colaborador FROM funcionarios GROUP BY departamento_id;


