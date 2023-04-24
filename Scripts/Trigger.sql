CREATE OR REPLACE FUNCTION previne_exclusao_clientes()
RETURNS TRIGGER AS $$
BEGIN 
	IF(TG_OP = 'DELETE') THEN
		RAISE EXCEPTION 'Não é possível excluir clientes.';
	END IF;
	RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER impede_exclusao_clientes
BEFORE DELETE ON clientes
FOR EACH ROW
EXECUTE FUNCTION previne_exclusao_clientes();

SELECT * FROM clientes;

DELETE FROM clientes WHERE id_cliente = 1;

ROLLBACK;