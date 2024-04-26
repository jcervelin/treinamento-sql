-- Adicionar Constraints de Checagem
-- Você também pode querer garantir que certas condições sejam atendidas, 
-- como por exemplo, a capacidade dos palcos deve ser maior que zero.


-- Adicionar uma constraint de checagem à tabela Palcos
ALTER TABLE Palcos
ADD CONSTRAINT check_capacidade
CHECK (Capacidade > 0);



-- Remover a constraint de checagem da tabela Palcos
ALTER TABLE Palcos
DROP CONSTRAINT check_capacidade;

