use students;
create table games(Gcode int not null, GameName varchar(20)not null, Gnumber int, PrizeMoney int, scheduleDate date);
insert into games(Gcode, GameName, Gnumber, PrizeMoney, scheduleDate)values(101, "Carom Board", 2, 5000, '2004-01-23'),
                         (102, "Badminton", 2, 12000, '2003-12-12'),
                         (103, "Table Tennis", 4, 8000, '2004-02-14'),
                         (105, "Chess", 2, 9000, '2004-01-01'),
                         (108, "Lawn Tennis", 4, 25000, '2004-03-19');
select * from games; 
select gcode, gamename from games;   
select gamename, prizemoney from games where prizemoney>7000;   
select * from games order by scheduledate;  
select sum(prizemoney) as sums, gnumber, count(gnumber) as total_gnumber from games group by gnumber;              
  
                         