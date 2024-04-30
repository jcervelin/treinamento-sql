INSERT INTO Shows (Banda_id, Palco_id, Data, Hora, Preco) VALUES (100, 300, '2050-07-15', '10:00', 150.00);
select * from shows;

delete from shows where show_id=8;

SELECT b.nome Banda, p.nome_palco Palco, s."data" , s.preco 
FROM Shows s
	INNER JOIN Bandas b ON s.Banda_id = b.Banda_id
	INNER JOIN Palcos p ON s.Palco_id = p.Palco_id
where s.preco > 100;

--Criando Chaves Estrangeiras e Constraints
--Adicionar Chave Estrangeira
--Para garantir que os IDs de bandas e palcos nos shows correspondam a entradas válidas nas tabelas Bandas e Palcos, você pode adicionar chaves estrangeiras à tabela Shows.
--
--Exemplo:

-- Adicionar chave estrangeira à tabela Shows que referencia Bandas
ALTER TABLE Shows
ADD CONSTRAINT fk_shows_bandas
FOREIGN KEY (Banda_id) REFERENCES Bandas(Banda_id);

-- Adicionar chave estrangeira à tabela Shows que referencia Palcos
ALTER TABLE Shows
ADD CONSTRAINT fk_shows_palcos
FOREIGN KEY (Palco_id) REFERENCES Palcos(Palco_id);

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
