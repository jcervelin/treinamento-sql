--Bandas
--???
--
--Palcos
--???
--
--Shows
--???

-- DDL (Data Definition Language)
-- CREATE table
-- DROP -> REMOVER TABELA
-- ALTER table -> altera TABELA

-- DML (Data Manipulation Language)
-- INSERT
-- update => atualiza DADOS
-- DELETE
-- SELECT


alter table bandas add column BATERISTA VARCHAR(100);

-- num_integrantes maior 4
-- num_integrantes e menor ou igual a 5
-- Igor
-- Vocalista de Rock = Guilherme
-- Vocalista de Jazz = Gabi X
-- Vocalista de Eletronica = Isa

-- de uma banda que tem Cosmic

-- Usar like com cuidado. Nao eh performatico
-- like '%Cosmic%'

update bandas set vocalista='Guilherme' where nome like '%Cosmic%';

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
drop table shows;
select * from bandas;

alter table SHOWS add column id integer;
alter table SHOWS add primary KEY (id);

update bandas set baterista=null;
select * from bandas;

alter table SHOWS rename column id_shows to id;

-- deleter chave primaria
alter table SHOWS drop constraint shows_pkey;

alter table SHOWS alter column data type date USING data::date;

alter table SHOWS add column if not exists abcd varchar;
alter table SHOWS drop column if exists abcd;

alter table bandas alter column baterista set default 'SEM BATERISTA';
alter table bandas alter column baterista drop default;

-- flightway
-- liquibase

insert into bandas (id, nome) values (5, 'Ramones');
select * from bandas;
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
