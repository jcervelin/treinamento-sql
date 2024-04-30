CREATE TABLE Bandas (
                        banda_id SERIAL PRIMARY KEY,
                        Nome VARCHAR(100),
                        Genero VARCHAR(50),
                        Pais VARCHAR(50)
);

CREATE TABLE Palcos (
                        palco_id SERIAL PRIMARY KEY,
                        Nome VARCHAR(100),
                        Capacidade INT
);

CREATE TABLE Shows (
                       show_id SERIAL PRIMARY KEY,
                       banda_id INT,
                       palco_id INT,
                       Data DATE,
                       Hora TIME,
                       Preco DECIMAL(10, 2),
                       FOREIGN KEY (banda_id) REFERENCES Bandas(banda_id),
                       FOREIGN KEY (palco_id) REFERENCES Palcos(palco_id)
);
