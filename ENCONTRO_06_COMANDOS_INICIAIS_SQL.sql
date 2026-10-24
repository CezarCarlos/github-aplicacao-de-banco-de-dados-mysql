

-- ACESSO / SETAR A BASE DE DADOS A QUAL QUEREMOS UTILIZAR
USE DB_T05072B_CEZAR_SILVA;


-- CRIANDO A TABELA LIVROS
CREATE TABLE TB_LIVROS (
	id_livro INT AUTO_INCREMENT PRIMARY KEY, 
    titulo VARCHAR(120) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    genero_livro VARCHAR(100),
    preco_livro DECIMAL(10, 2)
);

-- INSERINDO INFORMAÇÕES NA TABELA LIVROS
INSERT INTO TB_LIVROS (titulo, autor, ano_publicacao, genero_livro, preco_livro)
VALUES ('Dom Casmurro', 'Machado de Assis', 1899, 'Romance', '49.11');

-- CONSULTA INICIAL AOS DADOS DA TABELA LIVROS
SELECT * FROM TB_LIVROS;

-- INSERINDO INFORMAÇÕES NA TABELA LIVROS, utilizando somente 1 unico INSERT
INSERT INTO TB_LIVROS (titulo, autor, ano_publicacao, genero_livro, preco_livro)
VALUES ('O Guarani', 'Jose de Alencar', 1857, 'Romance', '25.90'),
       ('Iracema', 'Jose de Alencar', 1865, 'Romance', '46.90'),
       ('A sociedade do Anel', 'J. R. R. Tolkien', 1954, 'Fantasia', '56.62'),
       ('Harry Potter e a Pedra Filosofal', 'J. K. Rowling', 1997, 'Aventura', '99.63');

-- ORDENANDO O RESULTADO DA TABELA PELA COLUNA PREÇO - MENOR VALOR 
SELECT * FROM TB_LIVROS
ORDER BY preco_livro ASC;

-- ORDENANDO O RESULTADO DA TABELA PELA COLUNA PREÇO - MAIOR VALOR 
SELECT * FROM TB_LIVROS
ORDER BY preco_livro DESC;


-- CLAUSULA WHERE 
-- REALIZAR FILTROS NO RESULTADO DA CONSULTA
SELECT * FROM TB_LIVROS
WHERE autor = 'Jose de Alencar';

/* COMENTARIOS LONGOS */

-- OPERADOR LIKE
-- BUSCA POR PALAVRA CHAVE
SELECT * FROM TB_LIVROS
WHERE autor LIKE '%de%';

-- busca por palavra chave no começo do texto
SELECT * FROM TB_LIVROS
WHERE autor LIKE 'J%';

-- busca por palavra chave no final do texto
SELECT * FROM TB_LIVROS
WHERE genero_livro LIKE '%a';




















