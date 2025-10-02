create database loja;

create table Cliente(
  ID_Cliente serial primary key,
  Nome varchar(100) not null,
  Email varchar(100) not null unique,
  Telefone varchar(15)
);

create table Pedido(
  ID_Pedido serial primary key,
  ID_Cliente int references Cliente(ID_Cliente),
  Data_Pedido date not null,
  Total_Pedido numeric(10, 2) not null
);

create table Produto(
  ID_Produto serial primary key,
  Nome varchar(100) not null,
  Categoria varchar(50),
  Preco numeric(10, 2) not null
);

create table Producao(
  ID_Producao serial primary key,
  ID_Produto int references Produto(ID_Produto),
  Data_Producao date not null,
  Quantidade_Produzida int not null 
);

create table ItemPedido(
  ID_ItemPedido serial primary key,
  ID_Produto int references Produto(ID_Produto),
  ID_Pedido int references Pedido(ID_Pedido),
  Quantidade int not null,
  Preco_Unitario numeric(10, 2) not null
);

INSERT INTO Cliente (Nome, Email, Telefone) VALUES
('Ana Silva', 'ana.silva@gmail.com', '11987654321'),
('Carlos Pereira', 'carlos.pereira@hotmail.com', '11976543210'),
('Beatriz Santos', 'beatriz.santos@yahoo.com', '21987654321'),
('Diego Souza', 'diego.souza@gmail.com', '31965432109'),
('Mariana Lima', 'mariana.lima@outlook.com', '21912345678');

INSERT INTO Produto (Nome, Categoria, Preco) VALUES
('Tomate', 'Hortaliças', 4.50),
('Alface', 'Hortaliças', 2.00),
('Cenoura', 'Hortaliças', 3.00),
('Batata', 'Tubérculos', 5.50),
('Morango', 'Frutas', 12.00);

INSERT INTO Pedido (ID_Cliente, Data_Pedido, Total_Pedido) VALUES
(1, '2024-08-20', 30.00),
(2, '2024-08-21', 18.00),
(3, '2024-08-22', 12.00),
(4, '2024-08-23', 22.50),
(5, '2024-08-24', 40.00);

INSERT INTO Producao (ID_Produto, Data_Producao, Quantidade_Produzida) VALUES
(1, '2024-08-15', 100), -- Produção de 100 Tomates
(2, '2024-08-16', 200), -- Produção de 200 Alfaces
(3, '2024-08-17', 150), -- Produção de 150 Cenouras
(4, '2024-08-18', 80), -- Produção de 80 Batatas
(5, '2024-08-19', 50); -- Produção de 50 Morangos

INSERT INTO ItemPedido (ID_Pedido, ID_Produto, Quantidade, Preco_Unitario) VALUES
(1, 1, 4, 4.50), -- Pedido 1: 4 Tomates a 4,50 cada
(1, 2, 3, 2.00), -- Pedido 1: 3 Alfaces a 2,00 cada
(2, 3, 6, 3.00), -- Pedido 2: 6 Cenouras a 3,00 cada
(3, 4, 4, 5.50), -- Pedido 3: 4 Batatas a 5,50 cada
(4, 1, 3, 4.50), -- Pedido 4: 3 Tomates a 4,50 cada
(4, 5, 2, 12.00), -- Pedido 4: 2 Morangos a 12,00 cada
(5, 3, 4, 3.00), -- Pedido 5: 4 Cenouras a 3,00 cada
(5, 5, 2, 12.00); -- Pedido 5: 2 Morangos a 12,00 cada
