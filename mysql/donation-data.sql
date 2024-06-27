INSERT INTO Donor (name, email, cpf, cellphone)
VALUES
('Giovanni Gustavo Assis', 'giovanni_assis@outloock.com.br', '04811232534', '61988165585'),
('Rosa Eloá Drumond', 'rosaeloadrumond@imagemeaudio.com.br', '49644113039', '98997318004'),
('Cleberson Edson Branco de Ramos', 'cleberson@gmail.com', '13069252079', '61989836892'),
('Alexandre João Juan Pinto', 'alexandre.joao.pinto@thewishes.com.br', '99885010050', '88975661688'),
('Hadassa Helena Assunção', 'hadassa245@gmail.com', '68573659033', '63973893305'),
('Thomas Levi Nathan Souza', 'levisouza@gmail.com', '24158957095', '99983833330'),
('Allison Marta Aguiar de Azevedo', 'allison16@gmail.com', '58671897087', '99983833330'),
('Olga Azevedo de Salazar', 'azevedoolga@gmail.com', '73232544002', '83991687544'),
('Leonardo Thomas Campos', 'leocampos@gmail.com', '43244281079', '84992233236'),
('Luís Sebastião da Costa', 'bastiao@gmail.com', '86997208070', '74999519611'),
('Demian Walter Domingues Filho', 'demian@gmail.com', '87531278030', '63982342763'),
('Raquel Amanda Jesus', 'raquelzinha2025@gmail.com', '27560678068', '79998216415'),
('Gabriel Sebastião de Aranda Sobrinho', 'gabigol@gmail.com', '77845607029', '95976518553'),
('Jéssica Ester Cláudia Lopes', 'jessicalopes@gmail.com', '22360048007', '34968734689'),
('Lavínia Stefany Araújo', 'lavífanny@hotmail.com', '25516451078', '63985212995'),
('José Severino Calebe Almeida', 'zeseverino@gmail.com', '12112031589', '84994459612'),
('Camila Hilda Romero da Lira', 'hilda@gmail.com', '41969164573', '86984119618'),
('Larissa Manuela Bruna Lima', 'larissa-lima81@performa.com.br', '08629324597', '45987113210'),
('Inácio José Grego Góis', 'inacio13@gmail.com', '45572289507', '13992655406'),
('Cláudia Brenda Jaqueline Sales', 'claudia_sales@gruporeis.net', '51047748568', '85985032556'),
('Juliana Liane Caldeira de Pascoal', 'julianaliane2014@gmail.com', '28101737537', '21988371578'),
('Liz Cecília Clara', '', '71853732559', '28998011532');

INSERT INTO Volunteer (name, cpf, role)
VALUES 
('Christopher Burgos Neto', '75093187003', 'Diretor'),
('David Chaves Esteves', '92855769078', 'Coordenador'),
('Adriano Azevedo', '49036345073', 'Voluntário'),
('Mel Branco', '28588833000', 'Gerente'),
('Catarina Grego de Leal', '67644784063', 'Assistente'),
('Bella Cláudia Reis Serra', '70529649020', 'Supervisor'),
('Adriana Olímpia Ortiz de Brito', '25027766009', 'Administrador'),
('Elias Gilson Gusmão Filho', '71691601020', 'Recepcionista'),
('Sophie Anna de Dias', '75530031072', 'Organizador'),
('Abgail Marlene Galvão de Neves', '15177958000', 'Facilitador'),
('Caio Edson Correia Filho', '30144458004', 'Instrutor'),
('Dara Lúcia Abreu Lutero', '53103386087', 'Voluntário'),
('Allison Léia Barros Correia da Encarnação', '40438306023', 'Voluntário'),
('Amélia Estrada Queirós', '08810034090', 'Voluntário'),
('Nayara Bittencourt de Jimenes', '83151067085', 'Assistente Social'),
('Jeniffer Mirela Ávila Branco', '31187570001', 'Psicóloga'),
('João Pedro Gomes', '12345678901', 'Voluntário'),
('Maria Fernanda Oliveira', '23456789012', 'Coordenadora'),
('Luiz Henrique Silva', '34567890123', 'Gerente'),
('Ana Clara Sousa', '45678901234', 'Recepcionista'),
('Pedro Lucas Almeida', '56789012345', 'Facilitador'),
('Mariana Santos Ribeiro', '67890123456', 'Instrutora');


INSERT INTO Donation (item, category, amount, donor_id, entry_date)
VALUES
('Arroz', 'Alimentos', '100', '1', '2024-05-01 10:00:00'),
('Casacos', 'Roupas', '50', '2', '2024-05-02 11:23:27'),
('Macarrão', 'Alimentos', '150', '3', '2024-05-03 12:34:45'),
('Feijão', 'Alimentos', '250', '4', '2024-05-04 13:45:32'),
('Shampoo', 'Higiene Pesoal', '200', '5', '2024-05-05 14:56:56'),
('Sapatos', 'Roupas', '70', '6', '2024-05-06 15:07:21'),
('Aspirina', 'Medicamentos','554', '7', '2024-05-06 15:07:21'),
('Dipirona', 'Medicamentos', '499', '8', '2024-05-07 16:18:39'),
('Frutas', 'alimentos', '70', '9', '2024-05-08 17:29:08'),
('Mesas', 'Móveis', '2500', '10', '2024-05-09 18:40:50'),
('Leite', 'Alimentos', '120', '11', '2024-05-09 18:45:13'),
('Ovos', 'Alimentos', '80', '12', '2024-05-10 19:00:27'),
('Biscoitos', 'Alimentos', '60', '13', '2024-05-11 19:15:45'),
('Blusas', 'Roupas', '40', '14', '2024-05-12 19:30:32'),
('Shorts', 'Roupas', '30', '15', '2024-05-13 19:45:56'),
('Chapéus', 'Roupas', '20', '16', '2024-05-14 20:00:21'),
('Quebra-cabeças', 'Brinquedos', '50', '17', '2024-05-15 20:15:39'),
('Livros Infantis', 'Brinquedos', '70', '18', '2024-05-16 20:30:08'),
('Creme Dental', 'Higiene Pessoal', '150', '19', '2024-05-17 20:45:50'),
('Desodorante', 'Higiene Pessoal', '100', '20', '2024-05-18 21:00:15'),
('Band-aid', 'Medicamentos', '90', '21', '2024-05-19 21:15:43'),
('Pomada Antisséptica', 'Medicamentos', '110', '22', '2024-05-20 21:30:37');



INSERT INTO Stock (donation_id, volunteer_id, location, capacity, operation)
VALUES 
(1, 1, 'DF', 100, 'Recebido'),
(2, 2, 'MA', 50, 'Recebido'),
(3, 3, 'DF', 150, 'Recebido'),
(4, 4, 'CE', 250, 'Recebido'),
(5, 5, 'TO', 200, 'Recebido'),
(6, 6, 'MA', 70, 'Recebido'),
(7, 7, 'MA', 554, 'Recebido'),
(8, 8, 'PB', 499, 'Recebido'),
(9, 9, 'RN', 70, 'Recebido'),
(10, 10, 'BA', 2500, 'Recebido'),
(11, 11, 'TO', 120, 'Recebido'),
(12, 12, 'SE', 80, 'Recebido'),
(13, 13, 'RR', 60, 'Recebido'),
(14, 14, 'MG', 40, 'Recebido'),
(15, 15, 'TO', 30, 'Recebido'),
(16, 16, 'RN', 20, 'Recebido'),
(17, 17, 'PI', 50, 'Recebido'),
(18, 18, 'PR', 70, 'Recebido'),
(19, 19, 'SP', 150, 'Recebido'),
(20, 20, 'CE', 100, 'Recebido'),
(21, 21, 'RJ', 90, 'Recebido'),
(22, 22, 'ES', 110, 'Recebido');

select * from Stock
select * from Volunteer;
select * from Donation;
select * from Donor;
SELECT * FROM Stock;