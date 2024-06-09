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
  foreign Key (donation_id) references Donation(id)
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

