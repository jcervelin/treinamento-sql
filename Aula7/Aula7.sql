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

select Capacidade || ' ' || nome papibaquigrafo from Palcos
union all
select Genero diversos from bandas;


-- CONTATENACOES DE VALORES

select 'Hello, ' || 'World!' as greetings;
alter table Palcos drop paralelepipedo;
alter table Bandas add vocalista varchar(100);
alter table Bandas add baterista varchar(100);
select * from Bandas;
update bandas set vocalista='Bastiao',baterista='Donato' where banda_id=1;
update bandas set vocalista='Firmino' where banda_id=2;
update bandas set baterista='Adamastor' where banda_id=3;



-- para caso o valor seja nulo
SELECT baterista || ' ' || vocalista AS integrantes FROM bandas;
SELECT baterista || ' ' || COALESCE(vocalista, '') AS integrantes
FROM bandas;

SELECT concat(baterista, ' e ', vocalista) AS integrantes
FROM bandas;


-- VIEWS