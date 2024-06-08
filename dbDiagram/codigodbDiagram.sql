Table Donor {
  id int [pk, increment, not null]
  name varchar(50)
  cpf char(11) [not null]
  email varchar(150)
  cellphone char(11)
}

Table Donation {
  id int [pk, increment, not null]
  item varchar(100) [not null]
  category varchar(25) [not null]
  amount int [not null]
  donor_id int [not null, ref: > Donor.id]
  entry_date datetime
}

Table Donation_list {
  id int [pk, increment, not null]
  donation_id int [not null, ref: > Donation.id]
  entry_date datetime [not null]
}

Table Stock {
  id int [pk, increment, not null]
  donation_id int [not null, ref: > Donation.id]
  volunteer_id int [not null, ref: > Volunteer.id]
}

Table Volunteer {
  id int [pk, increment, not null]
  name varchar(50)
  cpf char(11)
  role varchar(25)
}


