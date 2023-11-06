use P236_code




create table Departments (
    Id int primary key identity,
    Name nvarchar(100) not null check (Len(Name) >= 2)
);

create table Employees (
    Id int primary key identity,
    FullName nvarchar(100) not null check (Len(FullName) > 3),
    Salary decimal(10, 2) not null check (Salary >= 0),
    Email nvarchar(100) not null unique,
    DepartmentId int,
    foreign key (DepartmentId)  references Departments(Id)
);


insert into Departments (Id, Name)
values
    ('HR22'),
    ( 'Sales'),
    ('Marketing');


	insert into Employees (Id, FullName, Salary, Email,DepartmentId)
values
    ( 'Nijat Azizov', 50000.00, 'nijatcod2e@edu.az',1),
    ( 'Behbud Behbudov', 60000.00,'nijatco3de@edu.az',2),
    ( 'Camal Camalov', 55000.00, 'nijatcode1@edu.az',3);





	--TAsk2
create database Market;


use Market;


create table Products (
    Id int primary key identity,
    Name nvarchar(100),
    Price smallint,
);


alter table Products
add   Brand nvarchar(100)


insert into Products
values
    ('Product 1', 5, 'Brand 1'),
    ('Product 2', 15, 'Brand 2'),
    ('Product 3', 8, 'Brand 3'),
    ('Product 4', 12, 'Brand 4'),
    ('Product 5', 7, 'Brand 5'),
    ('Product 6', 9, 'Brand 6'),
    ('Product 7', 11, 'Brand 7'),
    ('Product 8', 16, 'Brand 8'),
    ('Product 9', 6, 'Brand 9'),
    ('Product 10', 14, 'Brand 10'),
    ('Product 11', 11, 'Brand 11'),
    ('Product 12', 8, 'Brand 12'),
    ('Product 13', 13, 'Brand 13'),
    ('Product 14', 9, 'Brand 14');

   
   select * from Products as p where p.Price < (select avg(p.Price) from Products as p);


   select * from Products as p where p.Price >10



   select concat(p.Name, ' - ', p.Brand) as ProductInfo from Products as p where len(p.Brand) > 5;






