create table Employee(Eid int not null auto_increment primary key, Name varchar(20) not null, Department_id varchar(5), Qualification varchar(20), Sex varchar(6));
insert into Employee(Name, Department_id, Qualification, Sex)values('Deepali Gupta', '101', 'MCA', 'F'),
                                                                   ('Rajat Tyagi', '101', 'BCA', 'M'),
                                                                   ('Hari Mohan', '102', 'B.A.', 'M'),
                                                                   ('Harry', '102', 'M.A.', 'M'),
                                                                   ('Sumit Mittal', '103', 'B.Tech.', 'M'),
                                                                   ('Jyoti', '101', 'M.Tech.', 'F');
desc employee;                                                                 
select * from employee;

select name from employee where name like 'h%';

create table Salary(Eid int auto_increment, Basic int, D_A int, HRA int, Bonus int, foreign key(Eid) references Employee(Eid));
insert into Salary(Basic, D_A, HRA, Bonus)values(6000, 2000, 2300, 200),(2000, 300, 300, 30),(1000, 300, 300, 40),(1500, 390, 490, 30),(8000, 900, 900, 80),(10000, 300, 490, 89);

desc salary;                                                                 
select * from salary;

alter table salary add column Total_salary int;
update salary set Total_salary=10885 where eid=6;

select * from employee e inner join salary s where e.eid=s.eid;
select e.name, s.basic from employee e inner join salary s where e.eid=s.eid;

->NOT COMPLETED
select max(basic) from salary where bonus>40;
select count(*) from employee group by sex;
select distinct department_id from employee;





                                                                   