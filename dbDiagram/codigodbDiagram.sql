Table Donor {
  ID int [pk, increment] 
  name varchar(255) [not null]
  email varchar(255) [not null]
  cpf varchar(14) [not null]
  cellphone varchar(20) [not null]
}

Table Donation {
  ID int [pk, increment] 
  item varchar(255) [not null]
  category varchar(255) [not null]
  amount int [not null]
  donor_id int [ref: > Donor.ID] 
  entry_date date [not null]
}

Table Volunteer {
  ID int [pk, increment] 
  name varchar(255) [not null]
  cpf varchar(14) [not null]
  role varchar(255) [not null]
}

Table Stock {
  ID int [pk, increment] 
  donation_id int [ref: > Donation.ID] 
  volunteer_id int [ref: > Volunteer.ID] 
  location varchar(255) [not null]
  capacity int [not null]
  entry_date date [not null]
  operation varchar(255) [not null]
}


