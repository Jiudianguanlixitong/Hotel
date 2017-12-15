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
	type int not null,
	floor int not null,
	face varchar(4) not null,
	feature varchar(140)
)

create table Room_Status(
	room_id int foreign key references Room_Info(room_id),
	in_day date not null,
	out_day date not null,
	book_status bit not null,
	tidy bit
)

create table Room_Type(
	type int not null primary key,
	price int not null,
	tol int not null,
	free int not null,
	room_id int foreign key references Room_Info(room_id)
)

create table Book(
	id int foreign key references Customer(id),
	room_id int,
	day int,
	in_day date not null,
	out_day date not null,
	price int not null
)

create table Bill(
	id int foreign key references Customer(id),
	day int not null,
	room_id int,
	price int not null
)