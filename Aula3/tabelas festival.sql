CREATE TABLE Bandas (
                        Id SERIAL PRIMARY KEY,
                        Nome VARCHAR(100),
                        Genero VARCHAR(50),
                        Pais VARCHAR(50)
);

CREATE TABLE Palcos (
                        Id SERIAL PRIMARY KEY,
                        Nome VARCHAR(100),
                        Capacidade INT
);

CREATE TABLE Shows (
                       Id SERIAL PRIMARY KEY,
                       Id_Banda INT,
                       Id_Palco INT,
                       Data DATE,
                       Hora TIME,
                       Preco DECIMAL(10, 2),
                       FOREIGN KEY (Id_Banda) REFERENCES Bandas(Id),
                       FOREIGN KEY (Id_Palco) REFERENCES Palcos(Id)
);
