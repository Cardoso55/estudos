-- Colocando em prática os conceitos de criação de banco de dados, tabelas e inserção de dados.

-- Criando o Banco de Dados se não existir de uma loja de produtos de informática.
CREATE DATABASE IF NOT EXISTS `loja`;

-- Usando o database criado.
USE `loja`;

-- Criando tabelas básicas para a loja de produtos de informática.
CREATE TABLE IF NOT EXISTS `produtos` (
    `id_produto` INT NOT NULL AUTO_INCREMENT, -- Chave primária da tabela produtos, não pode ser nula e é auto incrementada.
    `nome` VARCHAR(100) NOT NULL, -- Nome do produto, pode ter no máximo 100 caracteres e não pode ser nulo.
    `descricao` TEXT, -- Descrição do produto, en formato de texto, pode ser nula.
    `preco` DECIMAL(10,2) NOT NULL, -- Preço do produto, com 10 dígitos no total e 2 casas decimais.
    `quantidade` INT NOT NULL, -- Quantidade do produto em estoque.
    PRIMARY KEY (`id_produto`) -- Declaração da chave primária da tabela produtos.
);

CREATE TABLE IF NOT EXISTS `clientes` (
    `id_cliente` INT NOT NULL AUTO_INCREMENT, -- Chave primária da tabela clientes, não pode ser nula e é auto incrementada.
    `nome` VARCHAR(100) NOT NULL, -- Nome do cliente, pode ter no máximo 100 caracteres e não pode ser nulo.
    `email` VARCHAR(100) NOT NULL UNIQUE, -- Email do cliente, pode ter no máximo 100 caracteres, não pode ser nulo e deve ser único.
    `telefone` VARCHAR(15), -- Telefone do cliente, pode ter no máximo 15 caracteres e pode ser nulo.
    PRIMARY KEY (`id_cliente`) -- Declaração da chave primária da tabela clientes.
);

-- CRIANDO UMA TABELA DE PEDIDOS, QUE VAI TER UMA RELAÇÃO COM A TABELA CLIENTES.

CREATE TABLE IF NOT EXISTS `pedidos` (
    `id_pedido` INT NOT NULL AUTO_INCREMENT, -- Chave primária da tabela pedidos, não pode ser nula e é auto incrementada.
    `id_cliente_fk` INT NOT NULL, -- Chave estrangeira referenciando o cliente que fez o pedido.
    `valor_total` DECIMAL(10,2) NOT NULL, -- Valor total do pedido, com 10 dígitos no total e 2 casas decimais.
    `data_pedido` DATETIME NOT NULL, -- Data e hora do pedido, não pode ser nula.
    PRIMARY KEY (`id_pedido`), -- Declaração da chave primária da tabela pedidos.
    FOREIGN KEY (`id_cliente_fk`) REFERENCES `clientes`(`id_cliente`) ON DELETE CASCADE -- Declaração da chave estrangeira referenciando a tabela clientes.
);

-- INSERTANDO DADOS NAS TABELAS CRIADAS COM SQL.

INSERT INTO `produtos` (`nome`, `descricao`, `preco`, `quantidade`) VALUES
('Mouse Gamer', 'Mouse com alta precisão e iluminação RGB', 150.00, 50),
('Teclado Mecânico', 'Teclado mecânico com switches azuis', 300.00, 30),
('Monitor 24"', 'Monitor Full HD de 24 polegadas', 800.00, 20);

INSERT INTO `clientes` (`nome`, `email`, `telefone`) VALUES
('João Silva', 'joao@gmail.com', '123456789'),
('Maria Oliveira', 'maria@gmail.com', '987654321');

INSERT INTO `pedidos` (`id_cliente_fk`, `valor_total`, `data_pedido`) VALUES
(1, 450.00, '2024-06-01 10:30:00'),
(2, 800.00, '2024-06-02 14:45:00');
