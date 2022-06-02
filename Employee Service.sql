create database payroll_service1

select db_name()

use payroll_service1

create table employee_service
(
id int identity (1,1) primary key,
name varchar (60) not null,
salary money not null,
start_date date not null
)

insert into employee_service values
('Mukesh', 10000.0, '2018-01-13'),
('Terisa',30000.0, '2019-11-13'),
('Charlie',20000.0, '2020-05-21'),
('Bill',25000.0, '2019-01-04'),
('Mark',140000.0, '2018-01-03')

select * from employee_service

select * from employee_service where name='Bill'

select * from employee_service where start_date between
'2018-01-13' and getdate()

update employee_service set gender='M'
where name in ('Mukesh', 'Bill','Charlie')

select * from employee_service

update employee_service set gender='F'
where name in ('Terisa', 'Mark')

select * from employee_service

select sum(salary) from employee_service where gender='M'

select min(salary) from employee_service where gender='f'

select max(salary) from employee_service where gender='m'

select avg(salary) from employee_service where gender='f'

select sum(salary) from employee_service group by gender

select sum(salary),gender from employee_service group by gender

alter table employee_service
add phone varchar(14),  department varchar(20) not null default 'cs', address varchar(50) not null default 'India'

select * from employee_service

alter table employee_service
add Basic_pay money,Deductions money, Taxable_pay money, Income_tax money, Net_pay money

select * from employee_service

insert into employee_service values
('Terisa', 39000.0, '2019-02-24' , 'F', '878834', 'sales', 'India', 2300.0, 120.0, 500.0, 780.0, 35000.0)

select * from employee_service

update employee_service set department='cs' where id=3

select * from employee_service
