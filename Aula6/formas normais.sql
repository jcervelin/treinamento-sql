--Primeira Forma Normal (1FN) (EVITAR LISTAS OU MAIS INFORMACOES NA MESMA COLUNA)
-- A 1FN exige que todas as tabelas em um banco de dados relacional tenham dados atômicos,
-- ou seja, que não haja campos que contenham mais de um valor. Além disso,
-- cada campo em uma tabela deve ter um nome único e cada registro deve ter um identificador exclusivo (chave primária).

--Segunda Forma Normal (2FN) (EVITAR REPETICOES) A 2FN exige que todas as tabelas em um banco de dados
-- relacional estejam na 1FN e que cada campo em uma tabela dependa totalmente da chave primária da tabela.
-- Isso significa que não deve haver campos que dependam apenas de parte da chave primária.

--Terceira Forma Normal (3FN) A 3FN exige que todas as tabelas em um banco de dados relacional estejam na 2FN
-- e que não haja dependências transitivas entre os campos de uma tabela. Isso significa que um campo deve
-- depender apenas da chave primária da tabela e não de outros campos.



truncate table Bandas;
truncate table Shows;
truncate table Palcos;


INSERT INTO Bandas (id, Nome, Genero_musical, Pais) VALUES (1,'The Eternal Watchers', 'Rock', 'EUA');
INSERT INTO Bandas (id, Nome, Genero_musical, Pais) VALUES (2, 'Quiet Corners', 'Jazz', 'Canadá');
INSERT INTO Bandas (id, Nome, Genero_musical, Pais) VALUES (3,'Sonic Boom', 'Eletrônica', 'Alemanha');
-- Banda sem show
INSERT INTO Bandas (id, Nome, Genero_musical, Pais) VALUES (4, 'Lonely Drummer', 'Solo', 'Brasil');

select * from Bandas order by id;


INSERT INTO Palcos (id_palco, nome_palco , Capacidade) VALUES (1,'Main Stage', 10000);
INSERT INTO Palcos (id_palco, nome_palco, Capacidade) VALUES (2,'Jazz Corner', 3000);
-- Palco sem banda
INSERT INTO Palcos (id_palco, nome_palco, Capacidade) VALUES (3,'Electronic Space', 5000);
select * from Palcos order by id_palco ;


INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (1, 1, '2024-07-15', '20:00', 150.00);
INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (2, 2, '2024-07-16', '18:00', 120.00);
-- Note que 'Sonic Boom' e 'Electronic Space' não estão em Shows

select * from Shows;
select * from bandas;
select * from Palcos p;


select p.nome_palco as "Palco", b.nome Banda, s."data" 
from Palcos p
	left join Shows s on p.id_palco = s.id_palco
	left join Bandas b on s.id_palco = b.id;

select 	Palcos.nome_palco, 
		Bandas.nome Banda, 
		Shows."data" 
from Shows
	inner join Palcos on Palcos.id_palco = Shows.id_palco 
	inner join Bandas on Bandas.id_banda = Shows.id_banda;

-- alter mudo estrutura da tabela
alter table bandas rename paralelepipedo to nome;
-- update mudo conteudo
update bandas set paralelepipedo='Banda da Ana' where id_banda=1;


drop table shows;
drop table BANDAS;

create table shows (
	ShowID serial primary key,
	data date
);

insert into shows (BANDAS, DATA) values (
	'Banda da Ana,Banda da Sophia,Banda do Joao',
	'2024-07-08'
);

insert into shows (BANDAS, DATA) values (
	'Banda da Ana,Banda da Sophia,Banda do Joao',
	'2024-07-08'
);


select * from SHOWS;



CREATE TABLE Bandas (
    BandaID INT PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE ShowsBandas (
    ShowID INT,
    BandaID INT,
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
    FOREIGN KEY (BandaID) REFERENCES Bandas(BandaID)
);


select * from SHOWS;

select * from BANDAS;
select * from ShowsBandas;


ALTER TABLE ShowsBandas
DROP COLUMN NomePalco;

ALTER TABLE SHOWS ADD COLUMN PalcoID int;



