
-- NEGOCIO ESCOLA (COLEGIO)
-- SETAR NO QUAL QUEREMOS GUARDAR AS INFORMAÇÕES
USE DB_T05072B_CEZAR_SILVA;

-- CRIAR A TABELA DE ALUNO
CREATE TABLE TB_ALUNO (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(50),
	sobrenome_aluno VARCHAR(50),
    curso VARCHAR(100)
);

-- INSERIR REGISTROS NA TABELA DE ALUNOS
INSERT INTO TB_ALUNO (nome_aluno, sobrenome_aluno, curso)
VALUES ('Antonio', 'Ferreira', 'Medicina'),
	   ('João', 'Martins', 'Economia'),
       ('Alex', 'Santana', 'Engenharia Eletrica'),
       ('Gustavo', 'Almeida', 'Contabilidade'),
       ('Paulo', 'Rodrigues', 'Sistemas de Informação');
       
-- CONSULTA INICIAL A TABELA DE ALUNOS
SELECT * FROM TB_ALUNO;


-- CRIAR A TABELA PROFESSOR
CREATE TABLE TB_PROFESSOR (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
	nome_professor VARCHAR(100),
    curso VARCHAR(100)
);

-- INSERIR REGISTROS NA TABELA DE PROFESSOR
INSERT INTO TB_PROFESSOR (nome_professor, curso)
VALUES ('Felipe', 'Medicina'),
       ('Romulo', 'Economia'),
       ('Francisco', 'Engenharia Eletrica'),
       ('Carla', 'Contabilidade'),
       ('Almeida', 'Sistemas de Informação');
       
-- CONSULTA INICIAL AOS DADOS DA TABELA DE PROFESSOR
SELECT * FROM TB_PROFESSOR;


-- CRIAR A TABELA DE COMENTARIOS
CREATE TABLE TB_COMENTARIO (
	id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno_comentario INT NOT NULL,
    id_professor_comentario INT NOT NULL,
    comentario TEXT,   
	nota_professor DECIMAL(3,1),
    FOREIGN KEY (id_aluno_comentario) REFERENCES TB_ALUNO(id_aluno),
    FOREIGN KEY (id_professor_comentario) REFERENCES TB_PROFESSOR(id_professor)
);

-- INSERIR COMENTARIOS NA BASE
INSERT INTO TB_COMENTARIO (id_aluno_comentario, id_professor_comentario, 
                           comentario, nota_professor)
VALUES (1, 1, 'Tudo Ok. Ótimo trabalho', '9.0'),
	   (2, 2, 'Nenhuma observação.', '7.5'),
       (3, 3, 'Não gostei das informações quanto a tarefa', '5.5'),
       (4, 4, 'Tudo certo', '4.5');
       
-- CONSULTA INICIAL A TABELA DE COMENTARIO
SELECT * FROM TB_COMENTARIO;


-- RESPONDENDO AS CONSULTAS (SELECT)
-- EXERC - 01
SELECT nome_aluno AS Aluno, 
	   curso AS Curso	 
FROM TB_ALUNO
ORDER BY nome_aluno ASC;

-- EXERC - 02
SELECT nome_professor AS Professor, 
	   curso AS Curso
FROM TB_PROFESSOR
ORDER BY nome_professor ASC;


-- DESAFIOS EXTRAS
-- EXERC - 03
SELECT id_professor_comentario AS ID_Professor,
       comentario AS Comentario,
       nota_professor AS Nota
 FROM TB_COMENTARIO
WHERE nota_professor < 6.0
ORDER BY nota_professor ASC;

-- EXERC - 04
SELECT id_professor_comentario AS ID_Professor,
       comentario AS Comentario,
       nota_professor AS Nota
 FROM TB_COMENTARIO
WHERE nota_professor > 6.0
ORDER BY nota_professor ASC;












