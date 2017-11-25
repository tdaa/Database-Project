
-- ------------------------------------------------------
-- ------------------------------------------------------
-- Universidade do Minho
-- Mestrado Integrado em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 
-- Caso de Estudo: A Oficina da Porta Aberta
-- Povoamento inicial da base de dados
-- Novembro/2017
-- ------------------------------------------------------
-- ------------------------------------------------------

-- Esquema: "Oficina"
USE `Oficina` ;

--
-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

--
-- povoamento da tabela "Funcionario"
INSERT INTO Funcionario 
	(id, Nome, DataNascimento, Morada, Email) 
	VALUES 
        (1, 'Artur Correia','1967-04-20', 'Avenida do Cavado 34', 'ccorreia0@ebay.com'),
		(2, 'Teresa Estevao', '1970-01-21', 'Rua dos pinheiros 33', NULL),
		(3, 'Anastasia Leite', '1964-05-29', 'Urbanizaçao Parkista 44',  'aleite2@gmpg.org'),
		(4, 'Irina Oliveira', '1988-11-17', 'Rua Fernando Pessoa 10', 'iroliveira3@t-online.de'),
		(5, 'Francisco Barreiro', '1982-08-09', 'Avenida da liberdade 89', NULL),
		(6, 'Adriana Felicidade', '1995-04-23', 'Rua do raio 1', 'afelicidade5@slashdot.org'),
		(7, 'Mario Castro', '1961-12-02', 'Rua de Barros 99', 'mcastro6@cdc.gov'),
		(8, 'Antonio Banderas', '1995-11-05', 'Avenida da confeiteira 23', 'atbanderas7@princeton.edu'),
		(9, 'Simao Santos', '1978-01-15', 'Rua Do Xico Esperto 50', 'saosantos8@auda.org.au'),
		(10, 'Eduardo Sapinho', '1993-02-08', 'Avenida Nestor 22', NULL),
		(11, 'Nuno Faria', '1987-01-23', 'Rua Inteligencia Abstrata 14',  'nfaria@wp.com'),
		(12, 'Gabriel Ricardo', '1966-10-24', 'Urbanizaçao Luxuosa 67', 'grichardesb@disqus.com'),
		(13, 'Afonso Lopes', '1981-03-28', 'Condominio da Boa Vida 4', 'ahaddlestonc@ifeng.com'),
		(14, 'Felix Alves', '1983-09-14', 'Castelo de Guimaraes 1', NULL),
		(15, 'Joao Pinheiro', '1975-07-11', 'Avenida da boavista 30', 'jpinnegare@squarespace.com')
        ;
--
-- DELETE FROM Funcionario;
-- SELECT * FROM Funcionario;        

--        
-- Povoamento da tabela "Contacto"
INSERT INTO Contacto
	(Numero, idFuncionario)
    VALUES
		('311273511', 1),
		('357330431', 2),
		('743596413', 3),
		('345270952', 4),
		('517206856', 5),
		('173360650', 6),
		('199668264', 7),
		('733150585', 8),
		('982607172', 9),
		('395506833', 10),
		('583391353', 11),
		('814539516', 12),
		('186355732', 13),
        ('249850259', 14),
        ('656366363', 15),
        ('432522453', 11),
        ('745754457', 9),
        ('864574745', 2),
        ('545344636', 4)
        ;
--
-- DELETE FROM Contacto;
-- SELECT * FROM Contacto;


--
-- Povoamento da tabela "Veiculo"
INSERT INTO  Veiculo 
	(id, Marca, Modelo, Matricula) 
    VALUES 
		(1, 'Hyundai', 'Elantra', '9OYNM0XN'),
		(2, 'Ford', 'Econoline E150', 'LUV8X8MH'),
		(3, 'Mazda', 'B-Series Plus', 'PONEVZJK'),
		(4, 'GMC', 'Sonoma', '7VDPUTU0'),
		(5, 'Oldsmobile', 'Alero', 'X7SQOJ4N'),
		(6, 'Lotus', 'Esprit', 'MSF57YZI'),
		(7, 'Honda', 'Odyssey', 'KZGK3XX4'),
		(8, 'BMW', '530', '732JAMR0'),
		(9, 'Cadillac', 'CTS-V', 'CYEA2I65'),
		(10, 'Audi', '200', 'SHH8039K'),
		(11, 'GMC', 'Savana 3500', 'JCHGF6E9'),
		(12, 'Saturn', 'S-Series', 'EYBNE1UH'),
		(13, 'Mercedes-Benz', 'R-Class', '5DKS8J9H'),
		(14, 'Audi', 'Quattro', 'CQOXPP3A'),
		(15, 'Hyundai', 'Elantra', '57O8C704'),
		(16, 'Buick', 'Park Avenue', 'EZXG4VRK'),
		(17, 'Lincoln', 'Navigator', 'JYZGG2Q0'),
		(18, 'Chrysler', 'Concorde', 'E8PNOU5Y'),
		(19, 'Porsche', 'Boxster', 'PIO1VKQA'),
		(20, 'Lexus', 'GX', 'U36DOCVU'),
		(21, 'Mercury', 'Milan', 'H4TM1AK3'),
		(22, 'Oldsmobile', 'Silhouette', 'PVYW89UM'),
		(23, 'Buick', 'Special', 'TD2UHWFT'),
		(24, 'GMC', 'Sierra', 'Y0X7LRTR'),
		(25, 'Mercedes-Benz', 'W201', '006F2BPY'),
		(26, 'Mitsubishi', 'Pajero', '1LUYFPEF'),
		(27, 'Ford', 'Econoline E250', 'LJVWF1TD'),
		(28, 'Mercedes-Benz', '500E', 'PL2UGY35'),
		(29, 'Volkswagen', 'Jetta', 'RL68RR95'),
		(30, 'Dodge', 'Dakota', 'KNF63ZM6'),
		(31, 'BMW', 'M', 'XIU0H1G0'),
		(32, 'Ford', 'Escort', 'QTD2P2C5'),
		(33, 'Bentley', 'Continental Super', 'ROES79KE'),
		(34, 'Mitsubishi', 'Eclipse', 'L7KLAWVP'),
		(35, 'Toyota', 'Tacoma Xtra', '6Q982ARJ'),
		(36, 'Honda', 'Odyssey', 'HUDRANKH'),
		(37, 'Hyundai', 'Elantra', '4QF38E8M'),
		(38, 'Volkswagen', 'Scirocco', 'U2XGLJL2'),
		(39, 'Chevrolet', 'Corvette', 'CN7X52VV'),
		(40, 'Buick', 'Regal', 'NNPAZE1Z')
        ;
--
-- DELETE FROM Veiculo;
-- SELECT * FROM Veiculo;        
        
--        
-- Povoamento da tabela "Serviço"
INSERT INTO Servico
	(id, Data, Tipo, Notas, idVeiculo)
    VALUES	
		(1,  '2017-09-11', 'Mudança de oleo', NULL, 1),
        (2, '2017-09-11', 'Reconstruçao de carro', 'portas com ferrugem e motor tem fuga num dos pistoes', 4),
        (3, '2017-09-11', 'Mudança de travoes', NULL, 2),
        (4, '2017-09-12', 'Limpeza dos filtros do ar', NULL, 10),
        (5, '2017-09-12', 'Arranjo de para-brisas', NULL, 11),
        (6, '2017-09-12', 'Substituiçao de vidros', NULL, 3),
        (7, '2017-09-12', 'Reconstruçao de carro', 'para-choques e capo empenado, direçao desalinhada', 21),
        (8, '2017-09-12', 'Arranjo de para-brisas', NULL, 9),
        (9, '2017-09-12', 'Troca de pneus', NULL, 22),
        (10, '2017-09-13', 'Reparo de portas', NULL, 5),
        (11, '2017-09-13', 'Reparo de motor', 'Substituiçao de velas do motor', 6),
        (12, '2017-09-13', 'Substituiçao de corrente', 'corrente demasiado gasta', 7),
        (13, '2017-09-13', 'Nova embraiagem', 'Embraiagem rompida', 8),
        (14, '2017-09-14', 'Pintura de carro', NULL, 12),
        (15, '2017-09-14', 'Reparo de motor', 'uso de aditivo fora dos padroes estabelecidos pela montadora', 13),
        (16, '2017-09-15', 'Arranjo de travao-de-mao', 'Travao de mao avariado', 14),
        (17, '2017-09-16', 'Reparo na direçao', NULL, 17),
        (18, '2017-09-17', 'Mudança de oleo',  NULL, 15),
        (19, '2017-09-17', 'Pintura de carro', NULL, 16),
        (20, '2017-09-18', 'Limpeza do filtro de particulas', NULL, 20),
        (21, '2017-09-19', 'Mudança de liquido de refrigeraçao', NULL, 19),
        (22, '2017-09-20', 'Troca de pneus', NULL, 21),
        (23, '2017-09-21', 'Jantes novas', NULL, 18),
        (24, '2017-09-22', 'Novo motor', 'entrada de agua no motor', 23),
        (25, '2017-09-22', 'Reparo de portas', NULL, 24),
        (26, '2017-09-22', 'Limpeza do filtro de particulas', NULL, 25),
        (27, '2017-09-22', 'Substituiçao de corrente', 'corrente demasiado gasta', 20),
        (28, '2017-09-22', 'Nova embraiagem', 'Embraiagem rompida', 26),
        (29, '2017-09-24', 'Limpeza dos filtros do ar', NULL, 30),
        (30, '2017-09-25', 'Mudança de oleo', NULL, 35),
        (31, '2017-09-26', 'Mudança de oleo de travoes', NULL, 14),
        (32, '2017-09-27', 'Substituiçao de calços', NULL, 27),
        (33, '2017-09-30', 'Reparo de motor', 'novas velas', 28),
        (34, '2017-10-02', 'Arranjo na caixa automatica', 'caixa nao desmultiplica', 29),
        (35, '2017-10-03', 'Reparo de roda', NULL, 33),
        (36, '2017-10-03', 'Reconstruçao de carro', 'Carro completamente desfeito, devido a um acidente', 34),
        (37, '2017-10-04', 'Arranjo de para-brisas', NULL, 32),
        (38, '2017-10-05', 'Substituiçao de vidros', NULL, 31),
        (39, '2017-10-05', 'Mudança de travoes', NULL, 36),
        (40, '2017-10-05', 'Nova embraiagem', 'embraiagem rompida', 37),
        (41, '2017-10-05', 'Reparo de roda', 'problema no rolamento da roda traseira.', 40),
        (42, '2017-10-07', 'Jantes novas', NULL, 38),
        (43, '2017-10-07', 'Mudança de liquido de refrigeraçao', NULL, 39),
        (44, '2017-10-09', 'Novo motor', 'Entrada de agua no motor.', 38),
        (45, '2017-10-10', 'Substituiçao de vidros', NULL, 1),
        (46, '2017-10-12', 'Substituiçao de calços', NULL, 4),
        (47, '2017-10-12', 'Pintura de carro', NULL, 19),
        (48, '2017-10-12', 'Troca de pneus', NULL, 22),
        (49, '2017-10-13', 'Reparo de motor', 'Mudança de velas.', 40),
        (50, '2017-10-14', 'Troca de pneus', NULL, 11),
        (51, '2017-10-16', 'Limpeza dos filtros do ar', NULL, 16),
        (52, '2017-10-19', 'Limpeza do filtro de particulas', NULL, 29),
        (53, '2017-10-22', 'Mudança de oleo', NULL, 35),
        (54, '2017-10-24', 'Arranjo na caixa manual', 'Barulho na mudança 5.', 9),
        (55, '2017-10-27', 'Arranjo na caixa automatica', 'caixa nao desmultiplica.', 31),
        (56, '2017-10-31', 'Novo para-choques', NULL, 26),
        (57, '2017-11-01', 'Reparo de portas', NULL, 18),
        (58, '2017-11-02', 'Reparo de roda', 'ma fixaçao no eixo.',  7),
        (59, '2017-11-03', 'Jantes novas', NULL, 10),
        (60, '2017-11-06', 'Reconstruçao de carro', 'Motor estragado, eixo traseiro sem coordenaçao, traseira do carro desfeita.', 8)
        ;
--
-- DELETE FROM Servico;
-- SELECT * FROM Servico;

--      
-- Povoamento da tabela "Servico_Funcionario"      
INSERT INTO ServicoFuncionario
	(idServico, idFuncionario)
	VALUES
		(1, 3),
        (2, 1),
        (3, 2),
        (4, 6),
        (5, 10),
        (6, 11),
        (7, 4),
        (8, 5),
        (9, 7),
        (10, 8),
        (11, 10),
        (12, 15),
        (13, 14),
        (14, 12),
        (15, 13),
        (16, 11),
        (17, 2),
        (18, 4),
        (19, 9),
        (20, 1),
		(21, 3),
		(22, 5),
        (23, 8),
        (24, 4),
        (25, 6),
        (26, 7),
        (27, 8),
        (28, 9),
        (29, 10),
        (30, 12),
        (31, 11),
        (32, 13),
        (33, 14),
        (34, 15),
        (35, 1),
        (36, 2),
        (37, 3),
        (38, 4),
        (39, 5),
        (40, 6),
        (41, 7),
        (42, 8),
        (43, 9),
        (44, 10),
        (45, 11),
        (46, 12),
        (47, 13),
        (48, 14),
        (49, 15),
        (50, 1),
        (51, 2),
        (52, 3),
        (53, 4),
        (54, 5),
        (55, 6),
        (56, 7),
        (57, 8),
        (58, 9),
        (59, 10),
        (60, 11)
        ;
--
-- DELETE FROM ServicoFuncionario;
-- SELECT * FROM ServicoFuncionario;	

INSERT INTO ServicoFuncionario
	(idServico, idFuncionario)
	VALUES
		(2, 13),
        (7, 11),
        (22, 8),
        (33, 9),
        (40, 1),
        (45, 15),
        (54, 2),
        (55, 8),
        (57, 2),
        (59, 4),
        (60, 10)
        ;

--        
-- Povoamento da tabela "Peças"
INSERT INTO Peças
	(id, Estado, Modelo, Nome, idServico)
    VALUES
		(1, 'novo', 'tamanho 17 Michelin esquerdo traseiro', 'Pneu', 9),
        (2, 'novo', 'tamanho 17 Michelin direito traseiro', 'Pneu', 9),
        (3, 'usado', 'Esquerda GMC Sonoma', 'Porta', 2),
        (4, 'novo', 'Dianteiro direito', 'Travao', 3),
        (5, 'novo', 'Dianteiro esquerdo', 'Travao', 3),
        (6, 'usado', 'Traseiro Mazda B-Series Plus', 'Vidro', 6),
        (7, 'novo', 'Dianteiro Mercury Milan', 'Para-choques', 7),
        (8, 'novo', 'Traseiro Mercury Milan', 'Para-choques', 7),
        (9, 'novo', 'capo Mercury Milan', 'Capo', 7),
        (10, 'usado', 'direçao Mercury Milan', 'Direcao', 7),
        (11, 'novo', 'Lateral Esquerda dianteira Oldsmobile', 'Porta', 10),
        (12, 'novo', 'Lateral Esquerda traseira Oldsmobile', 'Porta', 10),
        (13, 'novo', 'Vela Lotus Esprit', 'Vela', 11),
        (14, 'novo', 'Corrente para Honda Odissey', 'Corrente', 12),
        (15, 'novo', 'Embraiagem BMW 530', 'Embraiagem', 13),
        (16, 'novo', 'Vermelha', 'Tinta', 14),
        (17, 'novo', 'Preta', 'Tinta',  19),
        (18, 'novo', 'Direito traseiro tamanho 18' ,'Pneu' ,22),
        (19, 'novo', 'Esquerdo traseiro tamanho 18', 'Pneu', 22),
        (20, 'novo', 'Jante Chrysler Concorde', 'Jante', 23),
        (21, 'novo', 'Jante Chrysler Concorde', 'Jante', 23),
        (22, 'novo', 'Jante Chrysler Concorde', 'Jante', 23),
        (23, 'novo', 'Jante Chrysler Concorde', 'Jante', 23),
        (24, 'novo', 'Motor para Buick Special', 'Motor', 24),
        (25, 'usado', 'Direita GMC Sierra', 'Porta', 25),
        (26, 'novo', 'Corrente para Lexus GX', 'Corrente', 27),
        (27, 'novo', 'Embraiagem para Mitsubishi Pajero', 'Embraiagem', 28),
        (28, 'novo', 'Calços para Ford Econoline', 'Calços', 32),
        (29, 'novo', 'Velas para Mercedes 500E', 'Vela', 33),
        (30, 'usado', 'Capo para Mitsubishi Eclipe', 'Capo', 36),
        (31, 'usado', 'Para-choques traseiro para Mitsubishi Eclipse', 'Para-choques', 36),
        (32, 'usado', 'Motor para Mitsubishi Eclipse', 'Motor', 36),
        (33, 'usado', 'Porta Direita Traseira para Mitsubishi Eclipse', 'Porta', 36),
        (34, 'usado', 'Porta Direita Dianteira para Mitsubishi Eclipse', 'Porta', 36),
        (35, 'usado', 'Para-choques dianteiro para Mitsubishi Eclipse', 'Para-choques', 36),
        (36, 'usado', 'Vidros para BMW M', 'Vidro', 38),
        (37, 'novo', 'Travao para roda esquerda dianteira Honda Odyssey', 'Travao', 39),
        (38, 'novo', 'Travao para roda direita dianteira Honda Odyssey', 'Travao', 39),
        (39, 'novo', 'Embraiagem para Hyundai Elantra', 'Embraiagem', 40),
        (40, 'novo', 'Rolamento para roda traseira esquerda', 'Rolamento', 41),
        (41, 'novo', 'Jantes tamanho 18', 'Jante', 42),
        (42, 'novo', 'Motor 3000cc para Volkswagen Scirocco', 'Motor', 44),
        (43, 'usado', 'Vidro lateral direito traseiro', 'Vidro', 45),
        (44, 'novo', 'Calços para GMC Sonoma', 'Calços', 46),
        (45, 'novo', 'Branca', 'Tinta', 47),
        (46, 'usado', 'Tamanho 17 Michelin', 'Pneu', 48),
        (47, 'novo', 'Velas para motor de um Buick Regal', 'Vela', 49),
        (48, 'novo', 'Tamanho 15 Continental', 'Pneu', 50),
        (49, 'novo', 'para-choques dianteiro para Mitsubishi Pajero', 'Para-choques', 56),
        (50, 'novo', 'Jante tamanho 19', 'Jante', 59),
        (51, 'novo', 'motor 3000cc para BMW 530', 'Motor', 60),
        (52, 'novo', 'Eixo traseiro para BMW 530', 'Eixo', 60),
        (53, 'novo', 'Para-choques para BMW 530', 'Para-choques', 60),
        (54, 'novo', 'Mala para BMW 530', 'Porta-Malas', 60)
        ;
--
-- DELETE FROM Peças;
-- SELECT * FROM Peças;
        
	        
-- ------------------------------------------------------
-- <fim>
-- Grupo XX, 2017
-- ------------------------------------------------------