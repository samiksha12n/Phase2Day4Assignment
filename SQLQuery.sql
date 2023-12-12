create database Day4Assignment
use Day4Assignment

create table Products
(PId int primary key identity(1000,1),
Pname nvarchar(50) not null,
PPrice float,
PTax as PPrice*0.10 persisted,
PCompany nvarchar(50),
PQty int)

insert into Products values('Mobile','25000','Samsung','15')
insert into Products values('Mobile','76000','Apple','45')
insert into Products values('Mobile','35000','Redmi','78')
insert into Products values('Mobile','67000','HTC','85')
insert into Products values('Mobile','89000','Apple','95')
select * from Products

create proc usp_Product
@id int ,
@name nvarchar(50),
@price float,
@ptax float,
@pcompany nvarchar(50),
@pqty int
as
select * from Products

execute usp_Product 8,'Mobile',75000,'Samsung',78