SELECT * FROM departamento;
SELECT * FROM funcionarios WHERE departamento_id = 2 ORDER BY id_funcionario;

UPDATE funcionarios SET departamento_id = NULL;

UPDATE funcionarios SET departamento_id = 2 WHERE id_funcionario IN(1,2,3,4);
UPDATE funcionarios SET departamento_id = 3 WHERE id_funcionario IN(5,6);
UPDATE funcionarios SET departamento_id = 9 WHERE id_funcionario IN(7,8,9);
  