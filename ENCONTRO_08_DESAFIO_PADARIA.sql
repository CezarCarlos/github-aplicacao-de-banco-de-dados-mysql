
-- NEGOCIO PADARIA
-- PRODUTOS, VENDAS, FORNECEDOR

-- Setar a base dados
USE DB_T05072B_CEZAR_SILVA;

-- CRIANDO A TABELA DE FORNECEDOR
CREATE TABLE TB_FORNECEDOR_PADARIA (
	id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
    telefone VARCHAR(20)
);

-- INSERINDO DADOS NA TABELA DE FORNECEDOR
INSERT INTO TB_FORNECEDOR_PADARIA (nome, telefone)
VALUES ('Dona Benta', '(12) 91234-5678'),
       ('Padaria São Clemente', '(71) 96666-7777'),
       ('Padaria São Luiz', '(19) 91234-1234'),
       ('Panificadora São Geraldo', '(21) 97777-9999'),
	   ('Padaria Santa Maria', '(31) 94444-6666');
       
-- CRIANDO A TABELA DE PRODUTOS
CREATE TABLE TB_PRODUTO_PADARIA (
	id_produto INT 	AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(8,2)
);

-- INSERINDO REGISTROS NA TABELA DE PRODUTOS
INSERT INTO TB_PRODUTO_PADARIA (nome_produto, preco)
VALUES ('Pão Francês', '0.80'),
       ('Coxinha de Frango', '6.90'),
       ('Sonho', '8.80'),
       ('Lingua de Sogra', '12.99'),
       ('Lua de Mel', '7.95'),
       ('Bolo de cenoura', '16.50'),
       ('Bolo de chocolate', '19.90');
       
-- CRIAR A TABELA DE VENDAS
CREATE TABLE TB_VENDA_PADARIA (
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto_venda INT NOT NULL,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_produto_venda) REFERENCES TB_PRODUTO_PADARIA(id_produto)
);

-- INSERIR REGISTROS DE VENDA
INSERT INTO TB_VENDA_PADARIA (id_produto_venda, quantidade, data_venda)
VALUES (1, 10, '2026-10-21'),
       (2, 5, '2026-10-21'),
       (3, 3, '2026-10-22'),
       (6, 12, '2026-10-22'),
       (7, 15, '2026-10-22');
       
-- CONSULTA INICIAL AS TABELAS QUE FORAM CRIADAS
SELECT * FROM TB_FORNECEDOR_PADARIA;
SELECT * FROM TB_PRODUTO_PADARIA;
SELECT * FROM TB_VENDA_PADARIA;


-- RESPONDENDO AS CONSULTAS SOLICITADAS
-- CONSULTA 01
SELECT nome_produto AS Produto, preco AS Preco
 FROM TB_PRODUTO_PADARIA
ORDER BY preco ASC;

-- CONSULTA 02
SELECT id_produto_venda AS Produto_Vendido, 
       quantidade AS Quantidade_Vendida, 
       data_venda AS Data_Venda
 FROM TB_VENDA_PADARIA;

-- CONSULTA 03 - COD 6 (Bolo de Cenoura)
SELECT * FROM TB_VENDA_PADARIA
WHERE id_produto_venda = 6;

-- CONSULTA 04 - COD 7 (Bolo de chocolate)
SELECT * FROM TB_VENDA_PADARIA
WHERE id_produto_venda = 7;

-- CONSULTA 05 - Vendas do dia 21/10
SELECT * FROM TB_VENDA_PADARIA
WHERE data_venda = '2026-10-21';


       






