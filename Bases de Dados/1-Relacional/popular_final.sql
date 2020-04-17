use vacinas;

REPLACE INTO Unidade (`idLocal`, `nome`, `contato`, `tipo_unidade`, `website`, `cidade`) VALUES 
(1, 'Hospital de Braga', 225480442, 'Hospital', null, 'Braga'),
(2, 'Centro de Saúde da Póvoa de Varzim', 284224807, 'Centro de Saúde', null, 'Póvoa de Varzim'),
(3, 'Hospital de Santa Luzia', 294029054, 'Hospital', null, 'Viana do Castelo'),
(4, 'Centro de Saúde de Sete Rios', 267127147, 'Centro de Saúde', null, 'Lisboa'),
(5, 'Hospital de Santo António', 244834703, 'Centro de Saúde', null, 'Porto'),
(6, 'Centro de Saúde Guimarães', 260662473, 'Centro de Saúde', null, 'Guimarães'),
(7, 'Hospital de Bragança', 214062155, 'Hospital', null, 'Bragança'),
(8, 'Hospital de Santo André', 285845747, 'Hospital', null, 'Leiria'),
(9, 'Centro de saúde Oeste', 293516499, 'Centro de Saúde', null, 'Castelo Branco'),
(10, 'Centro de saúde de Barreiro Montijo', 237664383, 'Centro de Saúde', null, 'Barreiro'),
(11, 'Centro de Saúde da Guarda', 279892782, 'Centro de Saúde', null, 'Guarda'),
(12, 'Hospital São Bernardo ', 212125264, 'Hospital', null, 'Setúbal'),
(13, 'Centro de Saúde de Faro ', 256674575, 'Centro de Saúde', null, 'Faro'),
(14, 'Hospital Pêro da Covilhã', 226161801, 'Hospital', null, 'Covilhã'),
(15, 'Centro de Saúde de Fátima', 299004227, 'Centro de Saúde', null, 'Fátima'),
(16, 'Hospital Distrital de Santarém', 235516056, 'Hospital', null, 'Santarém'),
(17, 'Hospital Universitário de Coimbra', 288041134, 'Hospital', null, 'Coimbra'),
(18, 'Hospital da Luz', 211603321, 'Hospital', null, 'Aveiro'),
(19, 'Centro de saúde de Vendas Novas', 254496068, 'Centro de saúde', null, 'Évora'),
(20, 'Centro de saúde de Beja', 271027098, 'Centro de saúde', null, 'Beja');

SELECT * FROM Unidade;


REPLACE INTO Vacina (`idVacina`, `nome`, `intervalo`, `doses`, `doencas`, `obs`) VALUES 
(1, 'hexavalente DTPaHibVIPVHB', '0 Meses', '1', 'Difteria, tétano, tosse convulsa, doença invasiva por Haemophilus influenzae b, poliomielite e hepatite B', null),
(2, 'pentavalente DTPaHibVIP', '58 Meses', '5', 'Difteria, tétano, tosse convulsa, doença invasiva por Haemophilus influenzae b e poliomielite', null),
(3, 'tetravalente DTPaVIP', '58 Meses', '5', 'Difteria, tétano, tosse convulsa e poliomielite', null),
(4, 'Hib', '16 Meses', '4', 'Doença invasiva por Haemophilus influenzae b', null),
(5, 'MenB', '0 Meses', '1', 'Doença invasiva por Neisseria meningitidis B', null),
(6, 'MenC', '0 Meses', '1', 'Doença invasiva por Neisseria meningitidis C', null),
(7, 'VHB', '6 Meses', '3', 'Hepatite B', null),
(8, 'HPV9', '0 Meses', '1', 'Infeções por vírus do Papiloma humano de 9 genótipos', null),
(9, 'Pn13', '10 Meses', '3', 'Infeções por Streptococcus pneumoniae de 13 serotipos', null),
(10, 'Pn23', '10 Meses', '3', 'Infeções por Streptococcus pneumoniae de 23 serotipos', null),
(11, 'VIP', '58 Meses', '5', 'Poliomielite', null),
(12, 'VASPR', '48 Meses', '2', 'Sarampo, parotidite epidémica e rubéola', null),
(13, 'Tdpa', '0 Meses', '1', 'Tétano, difteria e tosse convulsa, doses reduzidas', null),
(14, 'Td', '660 Meses', '5', 'Tétano e difteria, doses reduzidas', null),
(15, 'BCG', '0 Meses', '1', 'Tuberculose', null);

SELECT * FROM Vacina;



REPLACE INTO Utente (`idUtente`, `nome`, `num_cidadao`, `contato`, `mail`, `dataNascimento`, `cidade`) VALUES 
(1, 'Adriana Da Santa Guedes', 18788549, 921243022, 'guedesAdriana@gmail.com', '1982-08-26', 'Braga'),
(2, 'Afonso João Borges Cabral Cerejeira Da Silva', 16604163, 930572847, 'silva_afonso1@hotmail.com', '1987-08-10', 'Barreiro'),
(3, 'Ana Esmeralda Alves Fernandes', 11306576, 936473610, 'ana.alves@yahoo.com', '1998-12-30', 'Guarda'),
(4, 'Lisandra Maria Pereira Da Silva', 11880771, 931167507, 'lisandra_silva@gmail.com', '2000-11-27', 'Braga'),
(5, 'Andre Jose Ferro Geraldes', 13399627, 916849533, 'andreferro@live.com', '1982-03-05', 'Lisboa'),
(6, 'António Pedro Carvalho Machado Da Silva', 16806912, 915886586, 'machadoDaSilva@gmail.com', '1988-02-12', 'Guarda'),
(7, 'Bruno Alexandre Almeida Sousa', 13300505, 931717917, 'brunosousa@yahoo.com', '1987-02-03', 'Viana do Castelo'),
(8, 'Nuno Cabral Vieira', 10727590, 927568390, 'nunovieira92@hotmail.com', '1988-10-14', 'Bragança'),
(9, 'Diogo Santos Tavares', 18146868, 915555067, 'diogosantos@live.com', '1982-11-12', 'Castelo Branco'),
(10, 'Helder Joao Moreira de Sousa', 10995841, 921459848, 'heldermoreira@hotmail.com', '1989-03-16', 'Guimarães'),
(11, 'Diana Filipa Oliveira', 18602408, 928631595, 'dianaoliveira@yahoo.com', '1988-01-29', 'Coimbra'),
(12, 'Carlos Alberto Gonçalves Da Costa', 18734152, 933324505, 'DaCosta@hotmail.com', '1972-04-17', 'Porto'),
(13, 'Madalena Freitas Castro', 18776794, 928871130, 'madalena_castro@yahoo.com', '1997-05-27', 'Beja'),
(14, 'José Pedro Santos Monteiro', 18422659, 931374107, 'santosmonteiro@gmail.com', '1991-04-21', 'Póvoa de Varzim'),
(15, 'Joana Maria da Silva Arantes', 15534069, 967648196, 'joana_arantes@mymail.com', '1990-04-02', 'Fátima'),
(16, 'Francisco Lira Pereira', 11385207, 961817114, 'lira@yahoo.com', '2002-02-16', 'Covilhã'),
(17, 'Daniel Camelo Rodrigues', 17695145, 911986050, 'danielcamelo@live.com', '1983-02-03', 'Beja'),
(18, 'João Carlos Faria Padrão', 19816642, 938007064, 'joaofaria@gmail.com', '1982-08-25', 'Guimarães'),
(19, 'Flávia Daniela da Silva', 14868616, 926172706, 'flaviasilva@gmail.com', '1997-08-19', 'Bragança'),
(20, 'Gil Gonçalves Pereira', 12379490, 969234263, 'gilpereira@hotmail.com', '1993-10-01', 'Póvoa de Varzim');

SELECT * FROM Utente;


REPLACE INTO Stock (`idStock`, `Unidade_idLocal`, `nome_vacina`, `data_entrada`, `quantidade`, `lote`, `validade`, `laboratorio`) VALUES 
(1, 1, 'tetravalente DTPaVIP', '2017-03-21', '30', 19085, '2018-01-20', 'LETI'),
(2, 1, 'VIP', '2017-03-04', '30', 52626, '2018-01-31', 'LETI'),
(3, 2, 'pentavalente DTPaHibVIP', '2017-03-27', '40', 98295, '2018-09-01', 'IHMT'),
(4, 3, 'tetravalente DTPaVIP', '2017-02-21', '40', 63390, '2018-07-11', 'INP'),
(5, 4, 'BCG', '2017-02-03', '40', 82644, '2018-08-17', 'INP'),
(6, 5, 'hexavalente DTPaHibVIPVHB', '2017-01-19', '20', 95028, '2018-10-11', 'INP'),
(7, 6, 'Pn13', '2017-02-26', '40', 46890, '2018-09-17', 'SGS'),
(8, 7, 'hexavalente DTPaHibVIPVHB', '2017-01-26', '20', 85128, '2018-12-13', 'IHMT'),
(9, 8, 'Hib', '2017-03-08', '30', 73699, '2018-07-30', 'IHMT'),
(10, 8, 'pentavalente DTPaHibVIP', '2017-03-07', '30', 13995, '2018-08-28', 'INP'),
(11, 9, 'VHB', '2017-02-04', '40', 96643, '2018-10-18', 'MEDI'),
(12, 10, 'Td', '2017-02-15', '40', 29598, '2018-07-02', 'MEDI'),
(13, 10, 'HPV9', '2017-02-07', '20', 45429, '2018-01-01', 'LETI'),
(14, 11, 'VASPR', '2017-02-15', '30', 74707, '2018-11-11', 'SGS'),
(15, 11, 'tetravalente DTPaVIP', '2017-01-13', '40', 74182, '2018-05-23', 'IHMT'),
(16, 12, 'BCG', '2017-01-23', '40', 16835, '2018-10-28', 'LETI'),
(17, 12, 'VHB', '2017-01-06', '20', 83410, '2018-10-06', 'SGS'),
(18, 13, 'tetravalente DTPaVIP', '2017-02-23', '20', 79971, '2018-06-26', 'IHMT'),
(19, 13, 'tetravalente DTPaVIP', '2017-01-03', '40', 50471, '2018-04-10', 'INP'),
(20, 13, 'MenC', '2017-01-05', '30', 42844, '2018-03-01', 'MEDI'),
(21, 13, 'hexavalente DTPaHibVIPVHB', '2017-01-02', '40', 29593, '2018-07-08', 'INP'),
(22, 14, 'VIP', '2017-02-23', '40', 45125, '2018-03-23', 'SGS'),
(23, 14, 'BCG', '2017-03-22', '40', 28152, '2018-08-21', 'MEDI'),
(24, 14, 'MenB', '2017-03-07', '20', 20615, '2018-09-19', 'SGS'),
(25, 15, 'Pn13', '2017-01-04', '30', 25600, '2018-05-16', 'MEDI'),
(26, 16, 'MenC', '2017-02-15', '30', 55175, '2018-08-31', 'LETI'),
(27, 16, 'Tdpa', '2017-01-17', '20', 55321, '2018-12-09', 'SGS'),
(28, 16, 'MenB', '2017-01-05', '20', 69397, '2018-02-02', 'SGS'),
(29, 16, 'HPV9', '2017-01-31', '20', 36298, '2018-09-30', 'SGS'),
(30, 17, 'Hib', '2017-03-19', '30', 59876, '2018-08-20', 'LETI'),
(31, 17, 'MenB', '2017-01-21', '30', 52148, '2018-05-24', 'IHMT'),
(32, 18, 'Hib', '2017-03-27', '40', 29753, '2018-08-12', 'IHMT'),
(33, 18, 'BCG', '2017-01-22', '20', 82772, '2018-03-25', 'MEDI'),
(34, 19, 'pentavalente DTPaHibVIP', '2017-01-08', '30', 41675, '2018-10-16', 'LETI'),
(35, 20, 'HPV9', '2017-01-14', '40', 28222, '2018-11-17', 'MEDI');

SELECT * FROM Stock;



REPLACE INTO Funcionario (`idFuncionario`, `nome`, `tipo_funcionario`, `num_cidadao`, `contato`, `Unidade_idLocal`) VALUES 
(1, 'Agostinho Abílio Cardoso Fernandes', 'Enfermeiro', 19208797, 965873525, 1),
(2, 'César Augusto Afonso Lopes', 'Enfermeiro', 22520977, 919846533, 1),
(3, 'Diana Maria Guimarães Lemos', 'Enfermeiro', 25003542, 963154284, 1),
(4, 'Benjamim Oliveira Sonntag', 'Enfermeiro', 24806508, 936986426, 1),
(5, 'Amadeu José Freitas Barroso Andrade', 'Médico', 28328028, 961245575, 2),
(6, 'André Augusto Costa Santos', 'Médico', 18570580, 964221586, 2),
(7, 'Norberto João Sobral', 'Médico', 29804472, 918465461, 2),
(8, 'Ana Beatriz Cortez Lourenço', 'Enfermeiro', 22947359, 939875474, 2),
(9, 'Bruno Alexandre Alves Ferreira', 'Médico', 11120809, 967111245, 3),
(10, 'Ana Margarida Oliveira Assunção', 'Enfermeiro', 17312143, 965657451, 3),
(11, 'Vítor Duarte Loureiro Afonso da Rocha Armada', 'Médico', 22195884, 939975233, 3),
(12, 'Nelson Andre oliveira Gonçalves', 'Médico', 17692615, 966533848, 3),
(13, 'Ana Margarida Pregueiro Faustino', 'Enfermeiro', 16507374, 919987654, 4),
(14, 'André Vieira Viana', 'Médico', 13553196, 961213557, 4),
(15, 'Henrique Manuel Saraiva', 'Médico', 27381526, 911231321, 4),
(16, 'Margarida Martins Areias', 'Enfermeiro', 26317216, 967564893, 4),
(17, 'Ana Margarida Pregueiro Faustino', 'Enfermeiro', 11259352, 931354379, 5),
(18, 'Andreia Martins Alves', 'Médico', 12762109, 963354336, 5),
(19, 'António Alfredo Mendes Fernandes', 'Médico', 24230463, 917657678, 5),
(20, 'Félix André Peixoto da Silva', 'Enfermeiro', 12137354, 965559708, 5),
(21, 'Carlitos Vicente da Silva Nunes', 'Enfermeiro', 17716996, 930900754, 6),
(22, 'Eduardo Luís Braga Machado', 'Enfermeiro', 14331408, 967736394, 6),
(23, 'Adelino José Alves Casas', 'Médico', 11351801, 919878754, 6),
(24, 'Cláudia Manuela Figueiredo Veiga de Oliveira', 'Médico', 25825707, 964524785, 6),
(25, 'Elisabete Barbosa da Costa', 'Médico', 12487678, 934656843, 7),
(26, 'Fernando Jorge Ferreira Laúndos da Costa', 'Enfermeiro', 23220770, 965895136, 7),
(27, 'Axel da Silva Ferreira', 'Médico', 13480138, 912324325, 7),
(28, 'Hugo André da Silva Veloso Moreira', 'Médico', 27302852, 964579631, 7),
(29, 'Filipa Manuela Pires de Deus', 'Médico', 19083427, 937757754, 8),
(30, 'Álvaro Manuel dos Santos Pinheiro', 'Médico', 22700877, 965559751, 8),
(31, 'Vanessa Sendão Gonçalves', 'Enfermeiro', 20801738, 919878757, 8),
(32, 'Maria Beatriz Alves de Sá Campos', 'Enfermeiro', 14964232, 966664811, 8),
(33, 'Joana Maria da Silva Arantes', 'Médico', 14227035, 936576768, 9),
(34, 'João Carlos Castro Catarino Rua', 'Médico', 21140407, 964578475, 9),
(35, 'Daniel Filipe Pimenta Peixoto', 'Médico', 27351250, 915547890, 9),
(36, 'Carlindo Paulo Araújo de Sousa', 'Enfermeiro', 17118888, 965845122, 9),
(37, 'Gil André Pires Afonso', 'Enfermeiro', 24760093, 938889685, 10),
(38, 'Bruno Filipe Carreiro de Moura', 'Enfermeiro', 17803037, 968887642, 10),
(39, 'Natalino Leite Gomes', 'Enfermeiro', 19655559, 966795852, 10),
(40, 'David Azevedo Carvalho', 'Médico', 29354373, 963335475, 10),
(41, 'Samuel Pires Torres', 'Médico', 11977352, 939789797, 11),
(42, 'Emanuel Queiroga Amorim Fernandes', 'Enfermeiro', 29043210, 910909732, 11),
(43, 'Carla Sofia Teixeira e Silva', 'Médico', 14090901, 968467594, 11),
(44, 'Ana Catarina Castro Freitas', 'Enfermeiro', 24455633, 934654654, 11),
(45, 'Miguel Alexandre Borges da Silva', 'Médico', 17940606, 913737065, 12),
(46, 'Francisco Manuel Machado Soares', 'Médico', 17018068, 967775474, 12),
(47, 'Carlos Alberto Cunha Rodrigues', 'Médico', 18009951, 939878567, 12),
(48, 'Marina Machado', 'Médico', 17023765, 968347347, 12),
(49, 'Cláudio Correia Silves Ferreira', 'Médico', 21807799, 913143154, 13),
(50, 'Sérgio Filipe de Sousa Campinho', 'Médico', 28905322, 966467746, 13),
(51, 'Fernando Daniel Soares Costa', 'Médico', 26347676, 934455740, 13),
(52, 'Catarina Andreia da Silva Araújo', 'Médico', 15001965, 967453844, 13),
(53, 'Helena Isabel oliveira Alves', 'Enfermeiro', 19873027, 910997096, 14),
(54, 'Marco André Alves Pereira', 'Enfermeiro', 13435671, 968887744, 14),
(55, 'Ana Sofia Ribeiro Martins', 'Médico', 26313741, 930444047, 14),
(56, 'Mário Manuel Silva Leite', 'Enfermeiro', 12090651, 910786586, 14),
(57, 'Davide Alberto Pinto Silva', 'Enfermeiro', 11383997, 965463444, 15),
(58, 'Tiago João Alves de Sousa', 'Enfermeiro', 24657751, 932554655, 15),
(59, 'Armando João Gomes Loureiro', 'Enfermeiro', 11708052, 969885996, 15),
(60, 'Duarte Nuno Ferreira Duarte', 'Enfermeiro', 13584705, 913645367, 15),
(61, 'Leandro Miguel Lemos Silva', 'Médico', 26367306, 968464766, 16),
(62, 'Simão Pedro do Carmo de Pinho Dias', 'Enfermeiro', 29341688, 938784848, 16),
(63, 'Diogo Filipe Araújo Alves', 'Enfermeiro', 13206402, 969997455, 16),
(64, 'Frederico António de Sousa Carvalho', 'Enfermeiro', 22521439, 910999789, 16),
(65, 'Dárcio Manuel Moreira Alves Gonçalves', 'Enfermeiro', 26409543, 967469975, 17),
(66, 'Leonardo Fernando da Silva Sanchez', 'Médico', 14129092, 930998678, 17),
(67, 'Rui Osvaldo de Barros Taveira da Cunha', 'Médico', 26234454, 961214632, 17),
(68, 'Susana Daniela Marques Mendes', 'Enfermeiro', 26229725, 914675680, 17),
(69, 'Gonçalo Gonçalves Meneses', 'Enfermeiro', 11397108, 962225655, 18),
(70, 'Eurico Manuel Folgado Afonso', 'Enfermeiro', 21050505, 935425257, 18),
(71, 'Carminda Maria Afonso Fernandes', 'Enfermeiro', 16058097, 962324773, 18),
(72, 'Paulo Ricardo Cunha Correia Araújo', 'Médico', 20811005, 914648890, 18),
(73, 'Joel Francisco Sendas', 'Médico', 24641658, 967135224, 19),
(74, 'Luis Carlos Caseiro', 'Médico', 15775569, 931232121, 19),
(75, 'Mariana Ines da Silva Medeiros', 'Médico', 18135281, 961467258, 19),
(76, 'Nuno Alberto Pires Fernandes', 'Médico', 26407701, 910008076, 19),
(77, 'Lázaro Tomé Alves Azevedo', 'Enfermeiro', 22617527, 962684811, 20),
(78, 'Nazaré Ribeiro Cardoso', 'Médico', 12944425, 938689006, 20),
(79, 'Renato de Brito Rodrigues', 'Médico', 28196216, 914354354, 20),
(80, 'Paulo Alexandre Fernandes Azevedo', 'Médico', 27636894, 963655955, 20);

SELECT * FROM Funcionario;



REPLACE INTO Campanha (`idCampanha`, `nome`, `data_inicio`, `data_fim`, `obs`) VALUES 
(1, 'Vacinação contra Poliomielite', '1965-01-15', '1966-06-30', null),
(2, 'Vacinação contra Sarampo', '1973-06-12', '1974-11-02', null),
(3, 'Vacinação contra Hepatite B', '2000-01-05', '2000-12-15', null),
(4, 'Vacina contra Doença Invasiva Meningocócica C', '2006-02-09', '2008-03-07', null),
(5, 'Vacinação contra Infeções por HPV', '2009-1-13', '2011-12-20', null);

SELECT * FROM Campanha;




REPLACE INTO Aplicacao_Vacina (`idAplicacao`, `data`, `num_dose`, `Utente_idUtente`, `Vacina_idVacina`, `Unidade_idLocal`) VALUES 
(1, '2016-10-31', 2, 19, 13, 17),
(2, '2017-06-28', 4, 13, 12, 18),
(3, '2017-02-03', 3, 5, 14, 4),
(4, '2017-09-15', 3, 14, 12, 5),
(5, '2017-05-10', 4, 16, 10, 5),
(6, '2016-10-08', 5, 16, 15, 20),
(7, '2017-07-30', 2, 4, 4, 14),
(8, '2017-04-24', 3, 4, 5, 7),
(9, '2017-08-24', 4, 17, 14, 19),
(10, '2016-11-21', 2, 11, 11, 3),
(11, '2017-07-11', 5, 4, 5, 8),
(12, '2017-07-11', 4, 18, 5, 1),
(13, '2016-12-07', 4, 7, 6, 3),
(14, '2017-01-15', 2, 17, 5, 6),
(15, '2017-10-12', 4, 14, 4, 13);

SELECT * FROM Aplicacao_Vacina;




REPLACE INTO VacinaCampanha (`Campanha_idCampanha`, `Vacina_idVacina`) VALUES 
(2, '12'),
(1, '12'),
(2, '11'),
(2, '6'),
(5, '6'),
(5, '12'),
(2, '11'),
(2, '7'),
(4, '6'),
(3, '7'),
(5, '12'),
(3, '7'),
(4, '12'),
(2, '7'),
(5, '6');

SELECT * FROM VacinaCampanha;














