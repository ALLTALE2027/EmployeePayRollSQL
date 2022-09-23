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
----------UC7---------
select sum(Salary) as TotalSalary from employee_payroll;
select avg(Salary) as AvarageSalary from employee_payroll;
select min(Salary) as MinimumSalary from employee_payroll;
select max(Salary) as MaximumSalary from employee_payroll;
select count(Salary) as TotalRecords from employee_payroll;
select sum(Salary) as TotalSalary, Gender from employee_payroll group by Gender;
select Avg(Salary) as AvarageSalary,  Gender from employee_payroll group by Gender;
select min(Salary) as MinimumSalary, Gender from employee_payroll group by Gender;
select max(Salary) as MaximumSalary, Gender from employee_payroll group by Gender;
select count(Salary) as TotalRecords, Gender from employee_payroll group by Gender;
----------UC7---------
insert into employee_payroll values('Terissa',12345,'2022-09-22','F');
select sum(Salary) as TotalSalary from employee_payroll;
select avg(Salary) as AverageSalary from employee_payroll;
select min(Salary) as MinimumSalary from employee_payroll;
select max(Salary) as MaximumSalary from employee_payroll;
select count(*) as TotalRecords from employee_payroll;
select sum(Salary) as TotalSalary, Gender from employee_payroll group by Gender;
select Avg(Salary) as AverageSalary,  Gender from employee_payroll group by Gender;
select min(Salary) as MinimumSalary, Gender from employee_payroll group by Gender;
select max(Salary) as MaximumSalary, Gender from employee_payroll group by Gender;
select count(*) as Gender_Count, Gender from employee_payroll group by Gender;
-----------UC8---------
Alter table employee_payroll add PhoneNumber bigint, Address varchar(100) default 'Silicon Valley';
Alter table employee_payroll add Department varchar(20) Not null default 'IT';
---------UC9--------
EXEC sp_rename 'employee_payroll.Salary', 'BasicPay', 'COLUMN';
Alter table employee_payroll add Deductions float,Taxable_Pay float,Income_Tax float, Net_Pay float;
----------UC10----------
update employee_payroll set Department = 'Sales' where Name='Terissa';
insert into  employee_payroll (Name,BasicPay,StartDate,Gender,PhoneNumber,Address,Department)
Values('Terissa', 10500.23, '2017-08-17','F',9123456780,'Mumbai','Marketing');
