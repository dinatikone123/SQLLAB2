use itvedant;
create table EmployeeInfo
(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
email varchar(40) unique,
salary int check(salary between 15000 and 80000),
city varchar(20) check(city in('Mumbai','Pune','Nagpur','Nashik')),
state varchar(20) default 'Maharashtra',
created_at datetime default current_timestamp
);


insert into EmployeeInfo(emp_name,email,salary,city) values('Dina','dina@gmail.com',35000,'Mumbai');
insert into EmployeeInfo(emp_name,email,salary,city) values('Amit','amit@gmail.com',35000,'Pune'),('Ajay','ajay2gmail.com','45000','Nagpur'),('Anuj','anuj@gmail.com','70000','Nashik');
select * from EmployeeInfo;

#Update record
update EmployeeInfo 
set emp_name='Aditya'
where emp_id=2;

update EmployeeInfo
set email='aditya@gmail.com'
where emp_id=2;

update EmployeeInfo
set salary=70000
where emp_id=2; 

#Remove data/Record 
delete from EmployeeInfo where emp_id=2;
set sql_safe_updates = 0;
delete from EmployeeInfo;

insert into EmployeeInfo(emp_name,email,salary,city) values('Dina','dina@gmail.com',35000,'Mumbai');
truncate table EmployeeInfo;

insert into EmployeeInfo(emp_name,email,salary,city) values('Dina','dina@gmail.com',35000,'Mumbai');
select * from EmployeeInfo;



create table EmpInfo
(
emp_id int,
emp_name varchar(20),
email varchar(40),
salary int,
city varchar(20)
);
desc EmpInfo;

alter table EmpInfo 
add constraint pk_id primary key(emp_id);

alter table EmpInfo 
add constraint uk_email unique(email);

alter table EmpInfo
modify emp_name varchar(20) not null;

desc EmployeeInfo;

use itvedant;

alter table EmployeeInfo
add department varchar(20) not null;

desc EmployeeInfo;

update EmployeeInfo 
set Department = 'IT'
where emp_id in (1,2);

update EmployeeInfo 
set Department = 'HR'
where emp_id in (3,4);

update EmployeeInfo 
set Department = 'Finance'
where emp_id in (5,6);

update EmployeeInfo 
set Department = 'Admin'
where emp_id in (7,8);
select * from EmployeeInfo;

insert into EmployeeInfo(emp_name,email,salary,city,state,created_at,department)
 values('Amit','amit@gmail.com',35000,'Mumbai','Maharashtra','2023-06-25 12:00:00','IT');

insert into EmployeeInfo(emp_name,email,salary,city,state,created_at,department)
 values('Amit','amit12@gmail.com',35000,'Mumbai','Maharashtra','2023-06-25 12:00:00','HR'),
('Anuj','anuj@gmail.com',78000,'Mumbai','Maharashtra','2023-06-25 12:00:00','HR'),
('Ajay','ajay@gmail.com',56000,'Pune','Maharashtra','2023-06-25 12:00:00','Finance'),
('Adi','adi@gmail.com',35580,'Nashik','Maharashtra','2023-06-25 12:00:00','Finance'),
('Satyam','satyam@gmail.com',34000,'Nagpur','Maharashtra','2023-06-25 12:00:00','Admin'),
('Aditya','aditya@gmail.com',25000,'Nagpur','Maharashtra','2023-06-25 12:00:00','Admin');
select * from EmployeeInfo;

#calculate total salary based on department
select department ,sum(salary) as total
from EmployeeInfo
group by department
order by total desc;

select
emp_name,
salary,
AVG(salary) over() as average_salary
From EmployeeInfo;

select
emp_name,
department,
salary,
AVG(salary) over(PARTITION BY Department) as dept_avg
From EmployeeInfo;

select
emp_name,
salary,
ROW_NUMBER()
over(ORDER BY salary desc) as row_num
From EmployeeInfo;

select
emp_name,
salary,
RANK()
over(ORDER BY salary desc) as row_num
From EmployeeInfo;

select
emp_name,
salary,
DENSE_RANK()
over(ORDER BY salary desc) as row_num
From EmployeeInfo;

create table posts (
user_id int,post_id int,likes int
);

insert into posts ( user_id,post_id,likes)
values (101,1,10);
insert into posts ( user_id,post_id,likes)
values (101,2,20),(102,3,15),(102,4,25);
select * from posts;

select user_id,post_id,likes,
sum(likes) over(partition by user_id)
as user_total_likes
from posts;

# 03 july 2026 ( friday) 
use itvedant;
# if function
select emp_id,emp_name,salary,if(salary>35000,'bonus','no bonus') from EmployeeInfo;

#greatest function
select greatest(10,20,30);
#list function
select least(10,20,30);

#comparison function
select ifnull(null,0);
select ifnull(122,0);
select nullif(5,5);
select nullif(5,16);

select coalesce(null,null,23,30);
select coalesce(null,null,null,30);
select coalesce(5,null,null,30);

#date fuction
select curdate();
select now();
#select ceil(45.54);
#select floor(49.56);

select timestampdiff(year,'2003-03-15',curdate());
select timestampdiff(year,'2003-03-15',curdate()) as age;

select date_add(curdate(),interval 10 day);
select date_sub(curdate(),interval 5 day);
select date_add(curdate(),interval 10 month);
select date_add(curdate(),interval 10 year);
select date_sub(curdate(),interval 5 month);
select date_sub(curdate(),interval 5 year);


select day('2026-07-02');
select month('2026-07-02');
select year('2026-07-02');





