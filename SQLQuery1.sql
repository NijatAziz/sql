use P236_code




create table Departments (
    Id int primary key,
    Name nvarchar(100) not null check (Len(Name) >= 2)
);

create table Employees (
    Id int primary key,
    FullName nvarchar(100) not null check (Len(FullName) > 3),
    Salary decimal(10, 2) not null check (Salary >= 0),
    Email nvarchar(100) not null unique,
    DepartmentId int,
    foreign key (DepartmentId)  references Departments(Id)
);


insert into Departments (Id, Name)
values
    (1, 'HR22'),
    (2, 'Sales'),
    (3, 'Marketing');


	insert into Employees (Id, FullName, Salary, Email,DepartmentId)
values
    (1, 'Nijat Azizov', 50000.00, 'nijatcod2e@edu.az',1),
    (2, 'Behbud Behbudov', 60000.00,'nijatco3de@edu.az',2),
    (3, 'Camal Camalov', 55000.00, 'nijatcode1@edu.az',3);
