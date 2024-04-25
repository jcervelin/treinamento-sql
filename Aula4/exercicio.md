# Maos a Obra

## Utilizando tabelas desnormalizadas

## Crie a tabela festival_musica

```
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
```

## Insira os dados na tabela festival_musica
```
insert into festival_musica
("data","hora","preco","nome_banda","genero_musical","num_integrantes","pais","nome_palco","capacidade","vocalista")
values ('2024-07-15','20:00:00',50.00,'The Cosmic Keys','Rock',6,'EUA','Palco Solar',5000,'Guilherme'),
('2024-07-15','22:00:00',40.00,'Electro Harmonix','Eletrônica',5,'França','Palco Lunar',3000,'Isa'),
('2024-07-16','18:00:00',30.00,'Jazz & Java','Jazz',4,'Brasil','Palco Solar',5000,'Gabi X');
```


### Crie 2 shows para The Cosmic Keys
* 1 show 2024-10-15 - 22:00:00, preco 100 reais, Palco Solar 
* 1 show 2024-11-15 - 22:00:00, preco 100 reais, Palco Solar

### Crie 2 shows para Electro Harmonix
* 1 show 2024-09-15 - 23:00:00, preco 700 reais, Palco Solar
* 1 show 2024-08-15 - 23:00:00, preco 1000 reais, Palco Solar


O entregavel para esta tarefa serao os comandos SQL para todas as operacoes acima

Discutam entre si os pros e contras desta abordagem de armazenamento de dados, comparado ao modelo anterior, com 3 tabelas distintas
