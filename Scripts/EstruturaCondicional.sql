DO $$
DECLARE
   preco_produto float;
BEGIN
   SELECT preco INTO preco_produto FROM produtos WHERE nome_produto = 'Arroz';
   
   IF preco_produto > 10 THEN
      RAISE NOTICE 'O preco do arroz esta acima de R$10';
   END IF;
END $$;

--------------------------------------------

CREATE OR REPLACE FUNCTION validar_credenciais(
    nome_usuario TEXT,
    senha TEXT
) RETURNS TEXT AS $$
DECLARE
    credenciais_validas BOOLEAN;
BEGIN
    -- Verifica se as credenciais são válidas
    SELECT COUNT(*) > 0 INTO credenciais_validas FROM usuarios
    WHERE nome = nome_usuario AND senha = crypt(senha, senha);

    -- Retorna uma mensagem de sucesso ou erro
    IF credenciais_validas THEN
        RETURN 'Credenciais válidas. Bem-vindo(a), ' || nome_usuario || '!';
    ELSE
        RETURN 'Credenciais inválidas. Por favor, tente novamente.';
    END IF;
END;
$$ LANGUAGE plpgsql;

/**
 * Nesse exemplo, a função "validar_credenciais" é criada com dois parâmetros: "nome_usuario" e "senha", 
 * ambos do tipo "TEXT". Dentro do corpo da função, o primeiro passo é verificar se as credenciais fornecidas são 
 * válidas, realizando uma consulta na tabela "usuarios" e comparando o nome de usuário e a senha fornecidos 
 * com os valores armazenados na tabela. O resultado dessa consulta é armazenado na variável 
 * booleana "credenciais_validas".
 * 
 * Em seguida, a função verifica o valor da variável "credenciais_validas" e retorna uma mensagem de sucesso ou 
 * erro, usando a estrutura "IF ... THEN ... ELSE ... END IF". 
 * A mensagem de sucesso inclui o nome de usuário fornecido, concatenado com a mensagem de boas-vindas.
 * A mensagem de erro simplesmente informa que as credenciais são inválidas.
 * 
 * Uma vez criada a função, ela pode ser chamada a partir de outras consultas SQL, 
 * como mostrado no exemplo a seguir:
 */

SELECT validar_credenciais('joao', '123456'); -- retorna "Credenciais válidas. Bem-vindo(a), joao!"
SELECT validar_credenciais('maria', 'senha_incorreta'); -- retorna "Credenciais inválidas. Por favor, tente novamente."
---------------------------------------------

SELECT * FROM produtos;

SELECT nome_produto, preco, 
	CASE WHEN preco <= 5.00 THEN 'Baixo' 
		 WHEN preco >= 10.00 THEN 'Alto' 
		 ELSE 'Médio' END "Resultado" FROM produtos;

ROLLBACK;