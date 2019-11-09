create database quanlytaikhoannganhang;

use quanlytaikhoannganhang;

create table customers
(
customer_number int not null auto_increment primary key,
fullname char(40) null ,
address char (255) null, 
email char (255) not null,
phone char(13) not null
);
create table accounts
(
account_number int not null auto_increment primary key,
account_type char(20) not null,
date date,
balance float,
customer_number int references customers(customer_number)
);
create table transactions
(
tran_number int not null primary key,
date date,
amounts char(255),
descriptions  char(255),
account_number int references accounts(account_number)
);