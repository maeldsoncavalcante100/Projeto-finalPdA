DROP SCHEMA IF EXISTS Donations;
CREATE SCHEMA Donations;
USE Donations;

CREATE TABLE Donor (
  id int primary key not null auto_increment,
  name varchar(50),
  email varchar(150),
  cpf char(11),
  cellphone char(11)
);

CREATE TABLE Donation (
  id int primary key not null auto_increment,
  item varchar(100) not null,
  category varchar(25) not null,
  amount int not null,
  donor_id int not null,
  entry_date datetime,
  foreign Key (donor_id) references Donor(id)
);  

CREATE TABLE Donation_list (
  id int primary key not null auto_increment,
  donation_id int not null,
  entry_date datetime,
  foreign key (donation_id) references Donation(id)
);

CREATE TABLE Volunteer (
  id int primary key auto_increment not null,
  name varchar(50),
  cpf char(11),
  role varchar(25)
);

CREATE TABLE Stock (
  id int primary key not null auto_increment,
  donation_id int not null,
  volunteer_id int not null,
  foreign key (donation_id) references Donation(id),
  foreign Key (volunteer_id) references Volunteer(id)
);

-- SOMA DE TODAS AS DOAÇÕES
SELECT SUM(amount) FROM Donation;
-- SOMA DE TODAS AS DOAÇÕES POR CATEGORIA
SELECT category, SUM(amount) FROM Donation GROUP BY category;
-- SOMA DE TODOS OS ITENS
SELECT  item, SUM(amount) FROM Donation GROUP BY item;
<<<<<<< HEAD
=======

-- Esta consulta lista os nomes dos voluntários e o número de doações que cada um gerenciou.
SELECT V.name, COUNT(S.donation_id) AS managed_donations
FROM Volunteer V
JOIN Stock S ON V.id = S.volunteer_id
GROUP BY V.name
ORDER BY managed_donations DESC;

-- Esta consulta retorna as doações realizadas entre 1º de maio de 2024 e 10 de maio de 2024.
SELECT item, category, amount, entry_date
FROM Donation
WHERE entry_date BETWEEN '2024-05-01 00:00:00' AND '2024-05-10 23:59:59'
ORDER BY entry_date;

-- Esta consulta conta o número de doações para cada categoria.
SELECT category, COUNT(*) AS donation_count
FROM Donation
GROUP BY category
ORDER BY donation_count DESC;
>>>>>>> 25353a20fb18bf1c4d23d3783b41e7b9fd70ec86
