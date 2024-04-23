--Bandas
--???
--
--Palcos
--???
--
--Shows
--???

-- DROP -> REMOVER TABELA

-- create table
-- DROP table
-- alter table => altera TABELA
-- update => atualiza DADOS

alter table bandas add column BATERISTA VARCHAR(100);

-- num_integrantes maior 4
-- num_integrantes e menor ou igual a 5
-- Igor
-- Vocalista de Rock = Guilherme
-- Vocalista de Jazz = Gabi X
-- Vocalista de Eletronica = Isa

-- de uma banda que tem Cosmic

-- Usar like com cuidado. Nao eh performatico
like '%Cosmic%'


update bandas set vocalista='Guilherme' where nome like '%Cosmic%';

update bandas set vocalista='Guilherme' where nome 
like '%Cosmic%';


update bandas set BATERISTA='Igor'
	where num_integrantes <= 5;

select * from bandas;
select * from palcos;


create table Shows (
	nome VARCHAR(100)
)


create table bandas(
	id integer primary key,
	nome varchar(50),
	genero_musical varchar(30),
	num_integrantes int,
	pais varchar(20)
);



create table palcos(
	id_palco int primary key,
	nome_palco varchar(20),
	capacidade int
);

insert into bandas values 
(1, 'The Cosmic Keys', 'Rock', 6, 'EUA'),
(2, 'Electro Harmonix', 'Eletrônica', 5, 'França'),
(3, 'Jazz & Java', 'Jazz', 4, 'Brasil');


insert into palcos values
(1, 'Palco Solar', 5000),
(2, 'Palco Lunar', 3000);

select * from SHOWS;

select * from bandas;

alter table SHOWS add column id integer;
alter table SHOWS add primary KEY (id);

update bandas set baterista='Ramon' where id=2;


alter table SHOWS rename column id_shows to id;


1.000.000

-- id = estrutura de hash

--
--Bandas
--Id
--Nome
--Gênero
--País
--
--Palcos
--Id
--Nome
--Capacidade
--
--Shows
--Id
--Id_Banda
--Id_Palco
--Data
--Hora
--Preço
