--UNION, UNION ALL, CONCATENACAO DE STRINGS, VIEWS


--PREPARACAO PARA UNION
create table Bandas (
	banda_id serial primary key,
	nome varchar(100) NOT NULL,
	genero varchar(50),
);

create table Palcos (
	nome serial primary key,
	nome varchar(100),
	capacidade int
);

-- Inserindo dados em Bandas
INSERT INTO Bandas (banda_id, Nome, Genero) VALUES (1, 'The Eternal Watchers', 'Rock');
INSERT INTO Bandas (banda_id, Nome, Genero) VALUES (2, 'Quiet Corners', 'Jazz');
INSERT INTO Bandas (banda_id, Nome, Genero) VALUES (3, 'Sonic Boom', 'Eletrônica');

-- Inserindo dados em Palcos
INSERT INTO Palcos (palco_id, Nome, Capacidade) VALUES (1, 'Main Stage', 10000);
INSERT INTO Palcos (palco_id, Nome, Capacidade) VALUES (2, 'Jazz Corner', 3000);
INSERT INTO Palcos (palco_id, Nome, Capacidade) VALUES (3, 'Main Stage', 10000);  -- Duplicata intencional para demonstração

alter table Palcos add paralelepipedo varchar(100);
update Palcos set paralelepipedo=nome || ' ' || capacidade;

select count(*) from Palcos where nome = 'Main Stage';
select distinct nome from Palcos where nome = 'Main Stage';

select * from palcos p;

select nome from bandas
union
select nome from Palcos;

select NOME from Palcos
union all
select Genero from bandas;


-- CONTATENACOES DE VALORES

select 'Hello, ' || 'World!' as greetings;
alter table Palcos drop paralelepipedo;
alter table Bandas add vocalista varchar(100);
alter table Bandas add baterista varchar(100);
select * from Bandas;
update bandas set vocalista='Bastiao',baterista='Donato' where banda_id=1;
update bandas set vocalista='Firmino' where banda_id=2;
update bandas set baterista='Adamastor' where banda_id=3;


select * FROM bandas;
-- para caso o valor seja nulo
SELECT baterista || ' ' || vocalista AS integrantes FROM bandas;

--COALESCE(vocalista, 'NAO TEM') => serve para colocar valor default
-- se vocalista for NULL
SELECT coalesce(baterista,'') || ' ' || COALESCE(vocalista, '') AS integrantes
FROM bandas;


SELECT baterista || ' E ' || vocalista AS integrantes FROM bandas;

SELECT concat(baterista , ' E ' , vocalista) AS integrantes FROM bandas;

SELECT concat(
	coalesce(baterista,'SEM BATERISTA'), 
	' E ', 
	coalesce(vocalista,'SEM VOCALISTA')) AS integrantes 
from bandas;


select * FROM bandas;
select concat(baterista,vocalista,nome) integrantes FROM bandas;


-- VIEWS
-- ELIMINAR TABELAS BANDAS PALCOS SHOWS
-- RECRIAR USANDO SQL DA AULA 3
create view Detalhes_Shows as
select 
	b.nome as "Nome da Banda",
	p.nome as "Nome do Palco",
	concat(s.data ,' - ',s.hora) "Data e Hora",
	s.preco 
from 
	shows s
inner join
	Bandas b on s.id_banda = b.id 
inner join
	palcos p on s.id_palco = p.id;
	



select * from Detalhes_Shows;

create view capacidade_3000_palcos as
select nome, capacidade
from
palcos p where capacidade > 3000;

select * from capacidade_3000_palcos;
insert into Palcos values (3, 'Palco Deivisson',10000);

create or replace view capacidade_3000_palcos as
select 
	nome,
	capacidade,
	(Capacidade / 1000) as "Capacidade em Milhares"
from
palcos p where
	capacidade > 3000;

drop view if exists capacidade_3000_palcos;
