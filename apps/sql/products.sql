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
  kind smallint not null, /* 0: 常設, 1: Aセット, 2: Bセット */
  has_sold_out boolean
);

insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('カレーライス', 290, '596', '11.4', '10.5', '3.6', '2017-06-01', '2017-08-01', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('カツカレー', 370, '832', '19.3', '23.6', '3.6', '2017-06-01', '2017-08-01', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('とんこつラーメン', 210, '481', '20.6', '8.2', '8.1', '2017-07-24', '2017-07-28', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('冷やしカレーうどん', 300, '422', '11.3', '6.4', '5.6', '2017-07-03', '2017-07-31', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('冷やしカレーそば', 300, '417', '14.3', '6.7', '5.6', '2017-07-03', '2017-07-31', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('冷やしうどん', 240, '489', '12.6', '2.3', '4.8', '2017-07-03', '2017-07-31', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('冷やしそば', 240, '481', '17.6', '2.7', '4.7', '2017-07-03', '2017-07-31', 0, true);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('ライス', 100, '386', '17..', '0.7', '0.0', '2017-06-01', '2017-08-01', 0, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('ハンバーグステーキデミグラスソース', 420, '850', '24.8', '31.7', '3.7', '2017-07-24', '2017-07-24', 1, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('ビーフカツ', 420, '785', '21.4', '23.5', '3.6', '2017-07-25', '2017-07-25', 1, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('韓国風鳥の唐揚げコチジャン風味', 420, '758', '30.4', '27.0', '2.9', '2017-07-26', '2017-07-26', 1, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('まぐろカツタルタルソース', 420, '949', '27.8', '31.1', '3.6', '2017-07-28', '2017-07-28', 1, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('肉じゃが(牛肉)', 420, '758', '23.3', '20.3', '4.2', '2017-07-29', '2017-07-29', 1, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('天津飯', 360, '644', '19.6', '12.2', '4.3', '2017-07-24', '2017-07-24', 2, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('照マヨチキン丼', 360, '701', '23.6', '14.7', '3.2', '2017-07-25', '2017-07-25', 2, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('タコライス', 360, '681', '22.0', '17.8', '2.8', '2017-07-26', '2017-07-26', 2, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('チャプチェ丼', 360, '932', '18.3', '25.0', '5.0', '2017-07-28', '2017-07-28', 2, false);
insert into products(name, price, energy, protein, lipid, salt, start_date, end_date, kind, has_sold_out)
  values('ソースかつ丼', 360, '779', '19.6', '19.5', '4.5', '2017-07-29', '2017-07-29', 2, false);
