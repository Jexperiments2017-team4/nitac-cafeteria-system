drop table reviews;
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

insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('Hoge', 500, '700', '20', '10', '5', '2017-06-01', '2017-07-01', '0', false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('Fuga', 500, '700', '20', '10', '5', '2017-06-01', '2017-07-01', '0', false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('Piyo', 500, '700', '20', '10', '5', '2017-06-01', '2017-07-01', '0', false);