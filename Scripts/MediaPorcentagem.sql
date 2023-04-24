

/**
 * porcentagem por departamento
 */
SELECT (sum(CASE WHEN departamento_id = 2 THEN salario end)/sum(salario))*100 AS porcentagem FROM funcionarios;

/**
 * média truncada
 */
SELECT (sum(salario)-min(salario)-max(salario))/(count(*)-2) FROM funcionarios;

/**
 * média truncada
 */
SELECT avg(salario) FROM funcionarios WHERE salario 
	NOT IN ((SELECT min(salario) FROM funcionarios),(SELECT max(salario) FROM funcionarios));

SELECT * FROM funcionarios;