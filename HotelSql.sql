create database Hotel

use Hotel
create login Temp with password = '123456';
create user Temp for login Temp;

-- 角色表
create table Staff(
	username varchar(20) not null primary key,
	pass varchar(20) not null,
	position varchar(10) not null
)

create table Customer(
	username varchar(20) not null primary key,
	pass varchar(20) not null,
	id int not null unique,
	name varchar(20) not null,
	gender varchar(2)
)

-- 房间
create table Room_Info(
	room_id int primary key not null,
	floors int not null,
	face varchar(4) not null,
	feature varchar(140),
	kind varchar(20) not null,
	in_day date ,
	out_day date ,
	book_status varchar(20),
	tidy varchar(20)not null,
	foreign key(kind) references Room_Type(kind)
)

create table Room_Type(
	kind varchar(20) not null primary key,
	price int not null,
	free int not null
)

create table Pre_Book(
	id int foreign key references Customer(id),
	in_day date not null,
	out_day date not null,
	kind varchar(20) not null,
	request varchar(140),
	price int not null
)

create table Bill(
	id int foreign key references Customer(id),
	in_day date,
	out_day date ,
	room_id int,
	kind varchar(20) not null,
	request varchar(140),
	price int not null
)