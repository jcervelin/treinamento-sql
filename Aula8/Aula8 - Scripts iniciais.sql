-- Criação da tabela Produtos
CREATE TABLE Produtos (
    produto_id SERIAL PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

-- Criação da tabela Vendas
CREATE TABLE Vendas (
    Venda_id SERIAL PRIMARY KEY,
    produto_id INT,
    Quantidade INT,
    DataVenda DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- Inserção de dados em Produtos
INSERT INTO Produtos (Nome, Preco) VALUES ('Camiseta Festival', 20.00);
INSERT INTO Produtos (Nome, Preco) VALUES ('Boné Festival', 15.00);
INSERT INTO Produtos (Nome, Preco) VALUES ('Poster Festival', 5.00);

-- Inserção de dados em Vendas
INSERT INTO Vendas (produto_id, Quantidade, DataVenda) VALUES (1, 10, '2024-07-15');
INSERT INTO Vendas (produto_id, Quantidade, DataVenda) VALUES (2, 5, '2024-07-15');
INSERT INTO Vendas (produto_id, Quantidade, DataVenda) VALUES (3, 20, '2024-07-16');
INSERT INTO Vendas (produto_id, Quantidade, DataVenda) VALUES (1, 30, '2024-07-17');
INSERT INTO Vendas (produto_id, Quantidade, DataVenda) VALUES (2, 10, '2024-07-18');
