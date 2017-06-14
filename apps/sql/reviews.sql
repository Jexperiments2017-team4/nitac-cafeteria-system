drop table reviews;

create table reviews(
  id serial primary key,
  product_id integer REFERENCES products(id),
  name varchar(255),
  point smallint not null,
  comment varchar(255)
);

insert into reviews(product_id, name, point, comment) values(1, 'hoge', 3, 'fugahogefuga');