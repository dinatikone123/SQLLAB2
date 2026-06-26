use itvedant;
select * from student;
 select count(*) from student;
 set SQL_safe_updates=0;
 Update student
 set stud_name ='Ramesh'
 where stud_id=100;
 delete from student
 where stud_id=100;
 select sum(age) from student;
 select max(age) from student;
 select min(age) from student;
 select avg(age) from student;
 select count(age) from student;
 select sum(age),max(age),min(age) from student;
 