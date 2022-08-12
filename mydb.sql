create database payroll_service;
show databases;
use payroll_service;
create table employee (id int primary key auto_increment,name varchar(20),salary bigint(10) ,start_date date);
insert into employee (name,salary,start_date) values ('Jeswin',20000,'2022-01-17');
insert into employee (name,salary,start_date) values ('Bill',22000,'2020-05-18');
insert into employee (name,salary,start_date) values ('Adam',25000,'2018-02-05');
insert into employee (name,salary,start_date) values ('Krish',43000,'2020-09-02');
insert into employee (name,salary,start_date) values ('Hannah',33000,'2017-01-13');
insert into employee (name,salary,start_date) values ('Queen',21000,'2019-06-30');
insert into employee (name,salary,start_date) values ('Terissa',33000,'2019-07-13');
insert into employee (name,salary,start_date) values ('Terissa',27000,'2020-08-20');
select * from employee where start_date between '2018-01-01' and date(now());
alter table employee add column gender char(1) after name;
update employee set gender = 'M' where name = 'Bill';
update employee set gender = 'M' where name = 'Jeswin';
update employee set gender = 'M' where name = 'Adam';
update employee set gender = 'M' where name = 'Krish';
update employee set gender = 'F' where name = 'Queen';
update employee set gender = 'F' where name = 'Hannah';
update employee set gender = 'F' where name = 'Terissa';

select sum(salary) from employee where gender = 'F' group by gender;
select avg(salary) from employee where gender = 'M' group by gender;
select min(salary) from employee where gender = 'M' group by gender;
select max(salary) from employee where gender = 'F' group by gender;

select gender,count(gender) from employee group by gender;

alter table employee add column company_branch int default 1;
alter table employee add column phone_number bigint unique;
alter table employee add column department_id int not null;
alter table employee add column basic_pay bigint;
alter table employee add column deductions bigint;
alter table employee add column tax_pay bigint;
alter table employee add column income_pay bigint;
alter table employee add column net_pay bigint;

update employee set phone_number = 6379984919 , department_id = 1 , basic_pay = 17000 , deductions = 2200 , tax_pay = 200 , income_pay = 25000 , net_pay = 21000 where name = 'Jeswin';
update employee set phone_number = 8072916669 , department_id = 3 , basic_pay = 27000 , deductions = 5200 , tax_pay = 1200 , income_pay = 40000 , net_pay = 35000 where name = 'Bill';
update employee set phone_number = 6379971123 , department_id = 1 , basic_pay = 17000 , deductions = 2200 , tax_pay = 200 , income_pay = 25000 , net_pay = 21000 where name = 'Adam';
update employee set phone_number = 8072915457 , department_id = 2 , basic_pay = 19000 , deductions = 200 , tax_pay = 200 , income_pay = 25000 , net_pay = 23000 where name = 'Krish';
update employee set phone_number = 9940876543 , department_id = 3, basic_pay = 21000 , deductions = 200 , tax_pay = 1200 , income_pay = 26000 , net_pay = 24000 where name = 'Queen';
update employee set phone_number = 8796543470 , department_id = 1 , basic_pay = 17000 , deductions = 2200 , tax_pay = 200 , income_pay = 25000 , net_pay = 21000 where name = 'Hannah';
update employee set phone_number = 7658228489 , department_id = 2 , basic_pay = 18000 , deductions = 200 , tax_pay = 300 , income_pay = 27000 , net_pay = 25000 where name = 'Terissa' && salary = 33000;
update employee set phone_number = 6789654321 , department_id = 2 ,company_branch = 2, basic_pay = 14000 , deductions = 200 , tax_pay = 200 , income_pay = 16000 , net_pay = 18000 where name = 'Terissa' && salary = 27000;

create table department(id int primary key auto_increment , dept_name varchar(20));
insert into department(dept_name) values ("Engineering"),("Sales & Marketing"),("Accounts");
alter table employee add foreign key (department_id) references department(id);

create table company(id int primary key auto_increment , branch_name varchar(20));
insert into company(branch_name) values ('Bangalore'),('Mumbai');
alter table employee add foreign key (company_branch) references company(id);

create table payroll (id int key auto_increment , employee_id int ,account_id bigint unique, ifsc varchar(20) , branch_name varchar(20) , constraint fk_payroll foreign key (employee_id) references employee(id));
insert into payroll (employee_id , account_id , ifsc , branch_name) values (1,176482976482912 , 'KVBL0001247' , 'Erode'),
(2,345673224224245 , 'SBIN0001537' , 'Assam'),
(3,1112224325645 , 'ICIC0006561' , 'Leh'),
(4,56434221324144 , 'KVBL0001247' , 'Bangalore'),
(5,22235342564765 ,' KVBL0001247' , 'Mahe'),
(6,75342231110000 , 'SBIN0001537 ', 'Assam'),
(7,32432220003302 , 'UTIB0000373 ', 'Warkala'),
(8,2000330210000 , 'SBIN0001520 ', 'Bangalore');

select * from company;
select * from employee;
select * from department;
select * from payroll;