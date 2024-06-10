## Sistema de Doações - MySQL

O Sistema de Doações é um aplicativo web que facilita a gestão de doações, doadores, voluntários e estoque de itens doados. Esta documentação descreve como o sistema está estruturado usando o banco de dados MySQL.

Estrutura do Banco de Dados
O banco de dados consiste nas seguintes tabelas principais, conforme o diagrama ER:

Donation: Armazena informações sobre as doações.
- `Donor:` Armazena informações dos doadores.
- `Volunteer:` Armazena informações dos voluntários.
- `Stock:` Registra a alocação das doações no estoque.
- `Donation_list:` Lista detalhes específicos de cada doação.

Tabela: `Donor`
Armazena informações sobre os doadores.

```sql
CREATE TABLE Donor (
  id int primary key not null auto_increment,
  name varchar(50),
  email varchar(150),
  cpf char(11),
  cellphone char(11)
```

Tabela: `Donation`
Armazena informações sobre as doações feitas.
```sql
CREATE TABLE Donation (
  id int primary key not null auto_increment,
  item varchar(100) not null,
  category varchar(25) not null,
  amount int not null,
  donor_id int not null,
  entry_date datetime,
  foreign Key (donor_id) references Donor(id)
); 
```

Tabela: `Donation_list`
Lista detalhes específicos de cada doação em uma visão agregada.
```sql
CREATE TABLE Donation_list (
  id int primary key not null auto_increment,
  donation_id int not null,
  entry_date datetime,
  foreign Key (donation_id) references Donation(id)
);
```

Tabela: `Volunteer`
Armazena informações sobre os voluntários que ajudam no processo de doações.
```sql
CREATE TABLE Volunteer (
  id int primary key auto_increment not null,
  name varchar(50),
  cpf char(11),
  role varchar(25)
);
```

Tabela: `Stock`
Registra a alocação das doações no estoque.
```sql
CREATE TABLE Stock (
  id int primary key not null auto_increment,
  donation_id int not null,
  volunteer_id int not null,
  foreign key (donation_id) references Donation(id),
  foreign Key (volunteer_id) references Volunteer(id)
);
```

## Consultas SQL
Aqui estão as consultas SQL essenciais para gerenciar e obter informações do banco de dados.

- Criar uma Nova Doação
- Visualizar Todas as Doações
- Visualizar Doações por Doador
- Registrar um Novo Voluntário
- Alocar Doações ao Estoque
- Visualizar Todas as Alocações de Estoque
- Gerar Relatório de Doações
- Editar Informações do Doador
- Excluir uma Doação
- Excluir um Doador

## Backup e Recuperação
# Backup do Banco de Dados
Para fazer um backup do banco de dados `Donations`, use o seguinte comando no terminal:
`mysqldump -u [usuário] -p[senha] Donations > backup_doacoes.sql`

- Substitua [usuário] pelo seu nome de usuário MySQL.
- Substitua [senha] pela sua senha MySQL.

## Licença
O sistema de doações é licenciado sob a licença MIT.

## Participantes do Projeto

| <img src="https://github.com/maeldsoncavalcante100/Projeto-finalPdA/assets/110051309/13c81d7a-0afe-40a6-9ed8-424ad32b1ee1" width="80px"> | <img src="images/reury.jpg" width="80px"> | <img src="images/lucy.jpg" width="80px"> | <img src="https://github.com/maeldsoncavalcante100/Projeto-finalPdA/assets/110051309/31a3047d-0b55-4094-9533-27d893fef27e" width="80px"> | <img src="images/alessandro.jpg" width="80px"> |
|-------------------------------------------|----------------------------------------------|-------------------------------------------|-----------------------------------------------|-------------------------------------------------|
| Maeldson Cavalcante                             | Reury Cardoso                          | Lucy                                      | Jamyle Elen                                    | Alessandro Filho                               |
