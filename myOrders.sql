create database myOrders;
use myOrders;

create table Product(
productID int primary key,
productName varchar(100) not null,
price double not null);

create table Customer(
customerID int primary key,
customerName varchar(100) not null,
email varchar(100) not null
);

create table Orders(
orderID int primary key,
orderName varchar(100) not null,
orderedDate date not null,
productID_FK int,
customerID_FK int,
foreign key(productID_FK) references Product(productID),
foreign key(customerID_FK) references Customer(customerID));

insert into Product (productID, productName, price) values
(1,'Pad thai', 10.00),
(2,'Fried rice', 20.00),
(3,'Pad see eiw', 30.00),
(4,'Noodle soup', 40.00),
(5,'Moo ping', 50.00);

insert into Customer (customerID, customerName, email) values
(1,'jack', 'jack@example.com'),
(2,'jenny', 'jenny@example.com'),
(3,'cather', 'cather@example.com'),
(4,'katie', 'katie@example.com'),
(5,'joel', 'joel@example.com');

insert into Orders (orderID, orderName, orderedDate, productID_FK, customerID_FK) values
(1, 'Order1', '2024-05-01', 1, 1),
(2, 'Order2', '2024-05-02', 2, 2),
(3, 'Order3', '2024-05-03', 3, 3),
(4, 'Order4', '2024-05-04', 4, 4),
(5, 'Order5', '2024-05-05', 5, 5);

drop table Product;
drop table Customer;
drop table Orders;

select * from Product;
select * from Customer;
select * from Orders;