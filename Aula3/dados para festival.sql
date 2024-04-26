INSERT INTO Bandas (Nome, Genero, Pais) VALUES ('The Cosmic Keys', 'Rock', 'EUA');
INSERT INTO Bandas (Nome, Genero, Pais) VALUES ('Electro Harmonix', 'Eletrônica', 'França');
INSERT INTO Bandas (Nome, Genero, Pais) VALUES ('Jazz & Show', 'Jazz', 'Brasil');

INSERT INTO Palcos (Nome, Capacidade) VALUES ('Palco Solar', 5000);
INSERT INTO Palcos (Nome, Capacidade) VALUES ('Palco Lunar', 3000);

INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (1, 1, '2024-07-15', '20:00', 50.00);
INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (2, 2, '2024-07-15', '22:00', 40.00);
INSERT INTO Shows (Id_Banda, Id_Palco, Data, Hora, Preco) VALUES (3, 1, '2024-07-16', '18:00', 30.00);
