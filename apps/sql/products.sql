drop table products;

create table products(
  id serial primary key,
  name varchar(255) not null,
  price integer not null,
  energy varchar(255),
  protein varchar(255),
  lipid varchar(255),
  salt varchar(255),
  start_date DATE not null,
  end_date DATE,
  kind smallint not null, 
  has_sold_out boolean
);
