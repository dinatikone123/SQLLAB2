use itvedant;
select * from student
where stud_id=101;
select * from student where stud_id > 101;
select * from student where stud_id < 104;
select * from student where stud_id >=102;
select * from student where stud_id <=102;
select * from student where stud_id <> 101;
select * from student where stud_id = 102 and stud_name='Dina';
select * from student where stud_id = 102 and stud_name='Amit';
select * from student where stud_id = 102 or stud_name = 'Amit';
select * from student where not stud_name = 'Amit';
select * from student where stud_id = 101 or stud_id = 102 or stud_id = 103;
select * from student where stud_id in (101,102,103); 
select * from student where stud_id not in (101,102,103); 




