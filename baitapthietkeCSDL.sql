create database quanlybanhang;
use quanlybanhang;

create table customers
(
customerNumber int not null,
customerName char(50) not null,
contactLastName char(50) not null,
phone char(50) not null,
addressLine1 char(50) not null,
addressLine2 char(50) null,
city char(50) not null,
state char(50) not null,
postalCode char(15) not null,
country char(50) not null,
creditLimit float null,
salesRepEmployeeNumber int not null,
primary key(customerNumber)
/* foreign key(salesRepEmployeeNumber) references employees(employeeNumber) */
);

create table orders
(
orderNumber int not null,
orderDate date not null,
requiredDate date not null,
shippedDate date null,
status char(15) not null,
comments text null,
quantityOrdered int not null,
priceEach float not null,
primary key(orderNumber)
/*foreign key(customerNumber) references customers(customerNumber)*/
);

create table payments
(
customerNumber int not null,
checkNumber char(50) not null,
paymentDate date not null,
amount float not null,
primary key(customerNumber),
foreign key(customerNumber) references customers(customerNumber)
);
create table products
(
productCode char(15) not null,
productName char(70) not null,
productScale char(10) not null,
productVendor char(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice float not null,
MSRP float not null,
primary key(productCode)
/*foreign key(productLine) references productlines(productLine)*/
);

create table productlines
(
productLine char(50) not null,
textDescription text null,
image char(255) null,
primary key(productLine)
);

create table employees
(
employeeNumber int not null,
lastName char(50) not null,
firstName char(50) not null,
email char(100) not null,
jobTitle char(50) not null,
officeCode char(10) not null,
primary key(employeeNumber)
/*foreign key(officeCode) references offices(officeCode)*/
);

create table offices
(
officeCode char(10) not null,
city char(50) not null,
phone char(50) not null,
addressLine1 char(50) not null,
addressLine2 char(50) null,
state char(50) null,
country char(50) not null,
postalCode char(15) not null,
primary key(officeCode)
);