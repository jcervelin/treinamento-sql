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

select p.nome_palco as "PaLcO", b.nome Banda, s."data" 
from Palcos p
	left join Shows s on p.id_palco = s.id_palco
	left join Bandas b on s.id_palco = b.id;

select Bandas.nome as Banda, Palcos.nome_palco Palco, Shows."data" 
from Bandas 
	right join Shows on Bandas.id = Shows.id_banda 
	right join Palcos on Shows.id_palco = Palcos.id_palco ;

