select bandas.nome , Palcos.nome_palco , Shows."data" 
from Shows, bandas, Palcos;

select * from Shows;

INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (1, 1, '2024-07-15', '20:00', 50.00);
INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (2, 2, '2024-07-15', '22:00', 40.00);
INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (3, 1, '2024-07-16', '18:00', 30.00);
-- inner JOIN => Retorna as linhas em que ha pelo menos uma
-- correspondencia em ambas as tabelas conectadas

SELECT Bandas.nome , shows."data" , palcos.nome_palco  
FROM Shows
	INNER JOIN Bandas ON Shows.Id_Banda = Bandas.Id
	INNER JOIN Palcos ON Shows.Id_Palco = Palcos.id_palco;

-- INNER sao para informacoes que nao sao nulas



, Palcos;
select * from Shows;

select * from festival_musica;

delete from 


create table festival_musica (
"id" serial primary key,
"data" date,
"hora" time,
"preco" numeric(10,2),
"nome_banda" varchar(100),
"genero_musical" varchar(100),
"num_integrantes" int,
"pais" varchar(50),
"nome_palco" varchar(100),
"capacidade" int,
"vocalista" varchar(100));

insert into festival_musica 
("data","hora","preco","nome_banda","genero_musical","num_integrantes","pais","nome_palco","capacidade","vocalista")
values ('2024-07-15','20:00:00',50.00,'The Cosmic Keys','Rock',6,'EUA','Palco Solar',5000,'Guilherme'),
('2024-07-15','22:00:00',40.00,'Electro Harmonix','Eletrônica',5,'França','Palco Lunar',3000,'Isa'),
('2024-07-16','18:00:00',30.00,'Jazz & Show','Jazz',4,'Brasil','Palco Solar',5000,'Gabi X');
select * from festival_musica;


-- PARA AULA 5 => LEFT JOIN E RIGHT JOIN
-- OPCIONAL => REVISAR TEORIA DOS CONJUNTOS NA MATEMATICA

