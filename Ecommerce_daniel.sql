-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
    nome VARCHAR(100), -- Adicione um campo para o nome do fornecedor
    endereco VARCHAR(100) -- Adicione um campo para o endereço do fornecedor
);

-- Tabela Terceiro-Vendedor
CREATE TABLE Terceiro_Vendedor (
    idTerceiro_Vendedor INT PRIMARY KEY,
    nome VARCHAR(100) -- Adicione um campo para o nome do terceiro vendedor
);

-- Tabela Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(100), -- Adicione um campo para o nome do produto
    descricao TEXT -- Adicione um campo para a descrição do produto
);

-- Tabela Estoque
CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY,
    nome VARCHAR(45) -- Adicione um campo para o nome do local de estoque
);

-- Tabela Produto_Estoque (para relacionar produtos com estoque)
CREATE TABLE Produto_Estoque (
    idProduto_Estoque INT PRIMARY KEY,
    Produto_idProduto INT,
    Estoque_idEstoque INT,
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
);

-- Tabela Terceiro_Vendedor_Produto (para relacionar terceiros vendedores com produtos)
CREATE TABLE Terceiro_Vendedor_Produto (
    idTerceiro_Vendedor_Produto INT PRIMARY KEY,
    Terceiro_Vendedor_idTerceiro_Vendedor INT,
    Produto_idProduto INT,
    FOREIGN KEY (Terceiro_Vendedor_idTerceiro_Vendedor) REFERENCES Terceiro_Vendedor(idTerceiro_Vendedor),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(100), -- Adicione um campo para o nome do cliente
    endereco VARCHAR(100) -- Adicione um campo para o endereço do cliente
);

-- Tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    Cliente_idCliente INT,
    Status VARCHAR(45),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Produto_Pedido (para relacionar produtos com pedidos)
CREATE TABLE Produto_Pedido (
    idProduto_Pedido INT PRIMARY KEY,
    Produto_idProduto INT,
    Pedido_idPedido INT,
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);
show tables;