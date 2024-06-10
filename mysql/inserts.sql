INSERT INTO Volunteer (name, cpf, role)
VALUES 
('Christopher Burgos Neto', '75093187003', 'Diretor'),
('David Chaves Esteves', '92855769078', 'coordenador'),
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
('Allison Léia Barros Correia da Encarnação', '40438306023', 'voluntário'),
('Amélia Estrada Queirós', '08810034090', 'Voluntário'),
('Nayara Bittencourt de Jimenes', '83151067085', 'Assistente Social'),
('Jeniffer Mirela Ávila Branco', '31187570001', 'Psicóloga');

SELECT * FROM Volunteer;


INSERT INTO  Donation (id, item, category, amount, donor_id, entry_date)
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



SELECT * FROM Donation;
