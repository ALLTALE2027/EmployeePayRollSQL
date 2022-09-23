--------------UC1------------
create database EmployeePayRollServices;
use EmployeePayRollServices;

--------------UC2--------------
Create table employee_payroll (
	Id int IDENTITY(1000,1) Primary Key,
	Name varchar (40) NOT NULL,
	Salary float Not null,
	StartDate Date
);

-----------UC3-------------
insert into employee_payroll values('Darshan',10000,'2020-11-13'),('Peter',15000.45,'2015-08-05'),('Tony',50000,GETDATE());
-----------UC4--------
 select * from employee_payroll