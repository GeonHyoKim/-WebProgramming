INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina 
HD display, 8-megapixel iSight 
Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');

INSERT INTO product VALUES('P1235', 'LG PC gram', 150000, '3.3-inch, Ips
LED dis play, 5rd Generation Intel
Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');

INSERT INTO product VALUES('P1236', 'Galaxys', 90000, '3.3-inch, 
212.8*125.6*6.6mm, Super AMOLED 
display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

delete from product;


create table if not exists product(
   p_id varchar(10) not null,
   p_name varchar(10),
   p_unitprice INTEGER,
   p_decription varchar(100),
   p_category varchar(20),
   p_manufacturer varchar(20),
   p_unitsInStock LONG,
   p_condition varchar(20),
   p_fileName varchar(20),
   primary key(p_id)
   );
   
   
   select * from product;