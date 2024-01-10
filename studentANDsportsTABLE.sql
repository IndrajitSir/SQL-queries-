USE STUDENTS;
create table student(studentno int not null primary key, class int, Name varchar(20), Game varchar(20), Grade1 varchar(2), SUPW varchar(20), grade2 varchar(2));
insert into student values(10, 7, 'Sameer', 'Cricket', 'B', 'photography', 'A'),
                          (11, 8, 'Sujit', 'Tennis', 'A', 'Gardening', 'C'),
                          (12, 7, 'Kamal', 'Swimming', 'B', 'photography', 'B'),
                          (13, 7, 'Venna', 'Tennis', 'C', 'Cooking', 'A'),
                          (14, 9, 'Archana', 'Basket Ball', 'A', 'Literature', 'A'),
                          (15, 10, 'Arpit', 'Cricket', 'A', 'Gardening', 'C');
select * from student;    
select * from student where grade1='c' or grade2='c';
select game from student;
select supw, name from student where name like 'a%';

create table sports(studentno int, foreign key(studentno) references student(studentno), Game2 varchar(20));
insert into sports values(10, 'Swimming'),
                          (11, 'Skating'),
                          (12, 'Football'),
                          (13, 'Tennis'),
                          (14, 'Cricket'),
                          (15, 'Athletics');    
alter table sports insert column grade2;                          
desc sports;       
select * from sports;

select * from student, sports where student.studentno = sports.studentno;
select * from student full join sports on student.studentno = sports.studentno;

select student.game,student.Grade1,student.grade2,sports.Game2 from student,sports where grade1='c' or grade2='c';
select student.name, student.Game, sports.Game2 from student,sports where sports.Game2 = student.Game;
select student.Name,student.Game, sports.Game2 from student,sports where student.Name like 'a%';