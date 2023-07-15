-- Criando as tabelas e definindo seus atributos e suas chaves

CREATE TABLE CURSO(
	ID_CURSO SERIAL PRIMARY KEY,
	NOME VARCHAR(255)
);

CREATE TABLE MODULO(
	ID_MODULO SERIAL PRIMARY KEY,
	NOME VARCHAR(255)
);

CREATE TABLE TURMA(
	ID_TURMA SERIAL PRIMARY KEY,
	NOME VARCHAR(255),
	ID_CURSO INT,
	ID_MODULO INT,
	FOREIGN KEY (ID_CURSO) REFERENCES CURSO(ID_CURSO),
	FOREIGN KEY (ID_MODULO) REFERENCES MODULO(ID_MODULO)
);

CREATE TABLE ESTUDANTE(
	ID_ESTUDANTE SERIAL PRIMARY KEY,
	NOME VARCHAR(255),
	CPF VARCHAR,
	STATUS VARCHAR,
	ID_TURMA INT,
	FOREIGN KEY (ID_TURMA) REFERENCES TURMA(ID_TURMA)
);

CREATE TABLE PESSOA_FACILITADORA(
	ID_PESSOA_FACILITADORA SERIAL PRIMARY KEY,
	NOME VARCHAR(255),
	CPF VARCHAR,
	FRENTE VARCHAR(255)
);

CREATE TABLE TURMA_PESSOA_FACILITADORA(
	ID_TURMA_PESSOA_FACILITADORA SERIAL PRIMARY KEY,
	ID_PESSOA_FACILITADORA INT,
	ID_TURMA INT,
	FOREIGN KEY (ID_PESSOA_FACILITADORA) REFERENCES PESSOA_FACILITADORA(ID_PESSOA_FACILITADORA),
	FOREIGN KEY (ID_TURMA) REFERENCES TURMA(ID_TURMA)
);

--Povoando as tabelas

INSERT INTO CURSO (ID_CURSO, NOME)
VALUES
  (1, 'DATA ANALYTICS'),
  (2, 'BACK_END'),
  (3, 'FRONT_END'),
  (4, 'FULL_STACK');

INSERT INTO MODULO (ID_MODULO, NOME)
VALUES
  (0, 'M0'),
  (1, 'M1'),
  (2, 'M2'),
  (3, 'M3'),
  (4, 'M4'),
  (5, 'M5');

INSERT INTO TURMA (ID_TURMA, NOME, ID_CURSO, ID_MODULO)
VALUES
  (1, 'VamoAI', 1, 3),
  (2, 'VamoLA', 2, 5),
  (3, 'ViemosAQUI', 1, 5);

INSERT INTO ESTUDANTE (ID_ESTUDANTE, NOME, CPF, ID_TURMA, STATUS)
VALUES
  (1, 'Felícia Reis Neto', '281.017.888-75', 3, 'Ativo'),
  (2, 'Esther Carvalho', '802.128.286-06', 3, 'Ativo'),
  (3, 'Gabriel Reis', '134.034.645-12', 3, 'Ativo'),
  (4, 'Hélio Barros', '282.725.243-09', 2, 'Ativo'),
  (5, 'Feliciano Souza', '727.017.813-53', 1, 'Ativo'),
  (6, 'Dalila Nogueira', '218.547.806-03', 2, 'Ativo'),
  (7, 'Pedro Batista', '707.436.666-82', 1, 'Ativo'),
  (8, 'Esther Carvalho', '225.321.543-06', 1, 'Ativo'),
  (9, 'Esther Reis', '718.782.348-70', 1, 'Ativo'),
  (10, 'Heloísa Barros Neto', '750.047.423-75', 3, 'Ativo'),
  (11, 'Dr. Gael Saraiva', '445.155.033-59', 1, 'Ativo'),
  (12, 'Eloá Martins', '867.164.856-78', 2, 'Ativo'),
  (13, 'Valentina Nogueira', '487.848.022-00', 1, 'Ativo'),
  (14, 'Natália Santos', '523.176.348-97', 2, 'Ativo'),
  (15, 'Vicente Carvalho', '348.277.804-39', 1, 'Ativo'),
  (16, 'Silas Nogueira', '144.038.278-61', 3, 'Ativo'),
  (17, 'Lívia Macedo', '741.166.728-58', 2, 'Ativo'),
  (18, 'Isabella Saraiva', '635.441.634-62', 2, 'Ativo'),
  (19, 'Srta. Giovanna Oliveira', '108.338.426-09', 2, 'Ativo'),
  (20, 'João Silva Neto', '053.017.421-91', 2, 'Ativo'),
  (21, 'Fabiano Braga Filho', '482.443.811-08', 3, 'Ativo'),
  (22, 'Fabrício Santos', '114.650.117-06', 3, 'Ativo'),
  (23, 'Joaquim Costa', '226.284.077-60', 3, 'Ativo'),
  (24, 'Marcela Macedo', '454.076.160-92', 1, 'Ativo'),
  (25, 'Emanuelly Batista', '018.874.417-78', 1, 'Ativo'),
  (26, 'Sarah Santos', '144.268.805-05', 1, 'Ativo'),
  (27, 'Lorenzo Albuquerque', '220.576.027-02', 1, 'Ativo'),
  (28, 'Danilo Moraes', '672.856.266-43', 2, 'Ativo'),
  (29, 'Elísio Carvalho', '246.814.686-73', 3, 'Ativo'),
  (30, 'Alícia Moreira', '615.572.554-31', 1, 'Ativo'),
  (31, 'Natália Oliveira', '087.864.476-88', 3, 'Ativo'),
  (32, 'Maria Alice Santos', '137.754.136-34', 2, 'Ativo'),
  (33, 'Giovanna Braga', '322.472.217-77', 1, 'Ativo'),
  (34, 'Sr. Suélen Carvalho', '576.471.147-94', 3, 'Ativo'),
  (35, 'Alexandre Costa', '853.787.268-75', 2, 'Ativo'),
  (36, 'Davi Lucca Oliveira', '847.381.133-05', 1, 'Ativo'),
  (37, 'Félix Moreira', '778.626.282-25', 3, 'Ativo'),
  (38, 'Karla Nogueira', '873.673.827-13', 1, 'Ativo'),
  (39, 'Norberto Carvalho', '507.628.440-35', 2, 'Ativo'),
  (40, 'João Pedro Batista', '240.660.701-16', 3, 'Ativo'),
  (41, 'Sirineu Moreira', '757.340.770-03', 3, 'Ativo'),
  (42, 'Margarida Oliveira', '556.610.713-37', 1, 'Ativo'),
  (43, 'Lorena Santos Neto', '510.371.024-28', 2, 'Ativo'),
  (44, 'Isis Santos', '216.546.744-60', 3, 'Ativo'),
  (45, 'Alessandra Pereira', '487.426.661-47', 2, 'Ativo'),
  (46, 'Isis Reis', '181.578.405-97', 1, 'Ativo'),
  (47, 'Lavínia Oliveira', '851.088.512-51', 2, 'Ativo'),
  (48, 'Pedro Martins', '045.063.714-02', 3, 'Ativo'),
  (49, 'Lara Silva', '776.310.755-30', 2, 'Ativo'),
  (50, 'Antônio Moraes', '142.700.888-42', 2, 'Ativo'),
  (51, 'Emanuelly Carvalho', '006.004.757-78', 1, 'Ativo'),
  (52, 'Isabella Silva', '174.233.742-29', 1, 'Ativo'),
  (53, 'Víctor Barros', '308.344.133-96', 1, 'Ativo'),
  (54, 'Heitor Nogueira', '874.515.250-07', 1, 'Ativo'),
  (55, 'Yasmin Reis', '378.680.813-92', 3, 'Ativo'),
  (56, 'Dr. Lorraine Franco', '211.287.577-96', 1, 'Ativo'),
  (57, 'Dr. Alícia Pereira', '441.147.473-54', 2, 'Ativo'),
  (58, 'Marcos Barros Neto', '570.823.756-20', 3, 'Ativo'),
  (59, 'Leonardo Franco', '031.826.415-30', 2, 'Ativo');
  
INSERT INTO PESSOA_FACILITADORA (ID_PESSOA_FACILITADORA, NOME, CPF, FRENTE)
VALUES
  (1, 'Davi Lucca Pereira', '452.123.441-07', 'TECH'),
  (2, 'Vitória Albuquerque', '157.162.761-80', 'SOFT'),
  (3, 'Dra. Feliciano Costa', '206.071.336-60', 'TECH'),
  (4, 'Mércia Oliveira Neto', '886.417.584-96', 'TECH'),
  (5, 'Enzo Gabriel Xavier', '061.365.051-42', 'SOFT'),
  (6, 'Sara Nogueira', '036.301.263-08', 'SOFT');
  
INSERT INTO TURMA_PESSOA_FACILITADORA (ID_TURMA_PESSOA_FACILITADORA, ID_PESSOA_FACILITADORA, ID_TURMA)
VALUES
  (1, 1, 1),
  (2, 2, 1),
  (3, 3, 2),
  (4, 4, 3),
  (5, 6, 2),
  (6, 6, 3);

--Alternativamente, podemos povoar as tabelas ESTUDANTE, PESSOA_FACILITADORA e CURSO usando arquivos CSV

/*Para povoar as tabelas usamos 3 arquivos CSV, 2 deles que foram compartilhados nas aulas mas com alterações e 1 desenvolvido pelo último código
apresentado no trabalho em grupo do 2 módulo*/

/*Para povoar a tabela curso foi usado o mesmo código*/

COPY CURSO (ID_CURSO,NOME) FROM 'AQUI VOCE COLOCA O DIRETORIO DO /CURSO_SQL.csv' DELIMITER ',' CSV HEADER

/*Para povoar a tabela pessoa_facilitadora*/

COPY PESSOA_FACILITADORA (ID_PESSOA_FACILITADORA, NOME, CPF, FRENTE) FROM 'AQUI VOCE COLOCA O DIRETORIO DO /FACILITADORA.csv' DELIMITER ',' CSV HEADER

/*É necessário inserir os dados da tabela MODULO e TURMA antes de prosseguir*/
	
INSERT INTO MODULO (ID_MODULO, NOME)
VALUES
  (0, 'M0'),
  (1, 'M1'),
  (2, 'M2'),
  (3, 'M3'),
  (4, 'M4'),
  (5, 'M5');

INSERT INTO TURMA (ID_TURMA, NOME, ID_CURSO, ID_MODULO)
VALUES
  (1, 'VamoAI', 1, 3),
  (2, 'VamoLA', 2, 5),
  (3, 'ViemosAQUI', 1, 5);

/*Para povoar a tabela estudante foi usado o seguinte código*/

COPY ESTUDANTE (ID_ESTUDANTE,NOME,CPF,ID_TURMA, STATUS) FROM 'AQUI VOCE COLOCA O DIRETORIO DO /ESTUDANTE.csv' DELIMITER ',' CSV HEADER

/*Povoando a tabela TURMA_PESSOA_FACILITADORA*/
	
INSERT INTO TURMA_PESSOA_FACILITADORA (ID_TURMA_PESSOA_FACILITADORA, ID_PESSOA_FACILITADORA, ID_TURMA)
VALUES
  (1, 1, 1),
  (2, 2, 1),
  (3, 3, 2),
  (4, 4, 3),
  (5, 6, 2),
  (6, 6, 3);
