use students;
create table club(coach_id int not null auto_increment primary key, coachname varchar(20) not null, age int, sports varchar(20), join_date date not null, pay int not null, sex varchar(5));
insert into club(coachname, age, sports, join_date, pay, sex) values('Kukreja', 35, 'karate', '1996-03-27', 10000, 'M'), 
                    ('Ravina', 34, 'Karate', '1997-01-20', 12000, 'F'), 
					('Karan', 34, 'Squash', '1998-02-19', 20000, 'M'),
                    ('Tarun', 33, 'Basketball', '1998-01-01', 15000, 'M'),
                    ('Zubin', 36, 'Swimming', '1998-01-12', 7000, 'M'),
                    ('Ketaki', 36, 'Swimming', '1998-02-24', 8000, 'F'),
                    ('Ankita', 39, 'Squash', '1998-02-20', 22000, 'F'),
                    ('Zareen', 37, 'Karate', '1998-02-22', 11000, 'F'),
                    ('Kush', 41, 'Swimming', '1998-01-13', 9000, 'M'),
                    ('Shailya', 37, 'Basketball', '1998-02-19', 17000, 'M');
select * from club;
desc club;
select * from club where sports like '%ball%';
select coachname, pay, age from club where pay>10000 order by age;
select avg(pay) from club where age=36;
select min(age) from club where pay>8000;
select pay*10, sex from club where sex='F';
select pay, sex from club where sex='F'
          (select pay/10);
