--Criando Chaves Estrangeiras e Constraints
--Adicionar Chave Estrangeira
--Para garantir que os IDs de bandas e palcos nos shows correspondam a entradas válidas nas tabelas Bandas e Palcos, você pode adicionar chaves estrangeiras à tabela Shows.
--
--Exemplo:

-- Adicionar chave estrangeira à tabela Shows que referencia Bandas
ALTER TABLE Shows
ADD CONSTRAINT fk_shows_bandas
FOREIGN KEY (Id_Banda) REFERENCES Bandas(Id);

-- Adicionar chave estrangeira à tabela Shows que referencia Palcos
ALTER TABLE Shows
ADD CONSTRAINT fk_shows_palcos
FOREIGN KEY (Id_Palco) REFERENCES Palcos(Id_Palco);

--Estas chaves estrangeiras garantem que não seja possível adicionar um 
--show ao banco de dados a menos que a banda e o palco referenciados 
--já existam nas tabelas correspondentes.


-- Deletando chaves estrangeiras

-- Remover chave estrangeira da tabela Shows que referencia Bandas
ALTER TABLE Shows
DROP CONSTRAINT fk_shows_bandas;

-- Remover chave estrangeira da tabela Shows que referencia Palcos
ALTER TABLE Shows
DROP CONSTRAINT fk_shows_palcos;
