truncate table Bandas;
truncate table Shows;
truncate table Palcos;


INSERT INTO Bandas (banda_id, Nome, Genero_musical, Pais) VALUES (1,'The Eternal Watchers', 'Rock', 'EUA');
INSERT INTO Bandas (banda_id, Nome, Genero_musical, Pais) VALUES (2, 'Quiet Corners', 'Jazz', 'Canadá');
INSERT INTO Bandas (banda_id, Nome, Genero_musical, Pais) VALUES (3,'Sonic Boom', 'Eletrônica', 'Alemanha');
-- Banda sem show
INSERT INTO Bandas (banda_id, Nome, Genero_musical, Pais) VALUES (4, 'Lonely Drummer', 'Solo', 'Brasil');

select * from Bandas order by banda_id;


INSERT INTO Palcos (palco_id, nome_palco , Capacidade) VALUES (1,'Main Stage', 10000);
INSERT INTO Palcos (palco_id, nome_palco, Capacidade) VALUES (2,'Jazz Corner', 3000);
-- Palco sem banda
INSERT INTO Palcos (palco_id, nome_palco, Capacidade) VALUES (3,'Electronic Space', 5000);
select * from Palcos order by palco_id ;


INSERT INTO Shows (banda_id, palco_id, Data, Hora, Preco) VALUES (1, 1, '2024-07-15', '20:00', 150.00);
INSERT INTO Shows (banda_id, palco_id, Data, Hora, Preco) VALUES (2, 2, '2024-07-16', '18:00', 120.00);
-- Note que 'Sonic Boom' e 'Electronic Space' não estão em Shows
select * from Shows;

select p.nome_palco as "PaLcO", b.nome Banda, s."data" 
from Palcos p
	left join Shows s on p.palco_id = s.palco_id
	left join Bandas b on s.palco_id = b.banda_id;

select Bandas.nome as Banda, Palcos.nome_palco Palco, Shows."data" 
from Bandas 
	right join Shows on Bandas.banda_id = Shows.banda_id
	right join Palcos on Shows.palco_id = Palcos.palco_id ;

