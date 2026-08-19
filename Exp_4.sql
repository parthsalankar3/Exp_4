create database E_commerce;

use E_commerce;

create table Users
(U_id int primary key,
name varchar(50) unique not null,
email varchar (50) unique);

create table Orders(
order_no int primary key,
order_amount float ,
order_date int not null,
foreign key (U_id) references Users(U_id));

create table Product
(p_id int primary key,
name varchar (50) unique ,
price float ,
order_no int,
description varchar (100) ,
foreign key (order_no) references Product(p_id));

create table product_category
(c_id int primary key,
name varchar (50) unique,
p_id int,
foreign key (p_id) references product_category(c_id));

create table payment
(n_id int primary key,
method varchar (50) unique not null,
amount float not null,
U_id int,
foreign key (U_id) references payment(n_id));

create table address
(a_id int primary key,
country varchar (50) unique not null,
state varchar (50) unique not null,
city varchar (50) not null,
U_id int,
foreign key (U_id) references address(a_id));

create table Tracking_Details
(t_id int primary key,
status varchar (50) ,
order_no int,
foreign key (order_no) references Tracking_Details(t_id));

create table cart
(cart_id int primary key,
u_id int,
p_id int,
foreign key (p_id) references cart(cart_id));


desc users;
desc orders;
desc product;
desc product_category;





























