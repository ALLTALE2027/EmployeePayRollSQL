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
 select * from employee_payroll;
 ----------UC5---------
SELECT * FROM employee_payroll where  name = 'Darshan';
SELECT * FROM employee_payroll where StartDate between '2018-08-15' and '2020-10-15';
SELECT * FROM employee_payroll where StartDate between '2018-08-15' and GETDATE();
SELECT * FROM employee_payroll where StartDate between cast ('05-15-2015' as date) and '2022-10-15';
-----------UC6-------
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender = 'M' where Name in('Darshan','Peter','Tony');
