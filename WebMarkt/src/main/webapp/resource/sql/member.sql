create table member(
	id varchar(50) not null primary key,
	passwd varchar(60) not null,
	name varchar(15) not null,
	number varchar(100) not null,
	birth_date varchar(60) not null,
	sex varchar(10) not null,
	reg_date timestamp default current_timestamp
);