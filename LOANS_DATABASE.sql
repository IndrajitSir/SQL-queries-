use loans;
create table loan_accounts(Number int not null auto_increment, Full_Name varchar(30) not null, Account_No int, Loan_amount int, Instalment int, Rate float8, DATE date, primary key(Number));
insert into loan_accounts(Full_name, Account_No, Loan_amount, Instalment, Rate, Date) values('R.K. Gupta', '839101565569', 300000, 36, 12.00, '2009-07-19'),
																							('S.P. Sharma', '894494091401', 500000, 48, 10.00, '2008-03-22'),
                                                                                            ('K.P. Jain', '629442592559', 300000, 36, null, '2007-03-08'),
                                                                                            ('M.P. Yadav', '977159145189', 800000, 60, 10.00, '2008-12-06'),
                                                                                            ('S.P. Sinha', '589348725983', 200000, 36, 12.50, '2010-01-03'),
                                                                                            ('P. Sharma', '394853718139', 700000, 60, 12.50, '2008-06-05'),
                                                                                            ('K.S. Dhall', '235975941628', 500000, 48, null, '2008-03-05');
alter table loan_accounts modify column Account_No varchar(15);
desc table loan_accounts;

select * from loan_accounts;
select Account_No, Full_Name, Loan_amount from loan_accounts;
select * from loan_accounts where instalment<40;
select Account_No, Loan_amount from loan_accounts where date < '2009-04-01';
select rate from loan_accounts where date < '2009-04-01';
select * from loan_accounts where rate='null';
select * from loan_accounts where rate<>'null';
select distinct loan_amount from loan_accounts;
select distinct Instalment from loan_accounts;
select * from loan_accounts where date>'2008-12-31' and instalment>=36;
select Full_Name, Loan_amount from loan_accounts where instalment<>36;
select Full_Name, Loan_amount from loan_accounts where loan_amount<500000 and rate>12;

select * from loan_accounts where date>='2009-01-01' and date<='2009-12-31';
                           OR
select * from loan_accounts where date between '2009-01-01' and '2009-12-31' ;

select * from loan_accounts where loan_amount>= 400000 and loan_amount<= 500000;          
select * from loan_accounts where rate>=11 and rate<=12;   

select full_name, loan_amount, instalment from loan_accounts where instalment in(24,36,48);  
select * from loan_accounts where loan_amount between 400000 and 500000;    
select * from loan_accounts where rate between 11 and 12; 
select account_no, full_name, loan_amount from loan_accounts where full_name like '%sharma';   
select account_no, full_name, loan_amount from loan_accounts where full_name like '%a';  
select account_no, full_name, loan_amount from loan_accounts where full_name like '%a%'; 
select account_no, full_name, loan_amount from loan_accounts where full_name not like '%p%';
select account_no, full_name, loan_amount from loan_accounts where full_name like '_a';
select * from loan_accounts order by loan_amount asc;
select * from loan_accounts order by date desc;
select * from loan_accounts order by loan_amount asc, date desc;

update loan_accounts set rate=11.50 where Number in(3,7);
update loan_accounts set rate+0.5 where loan_amount>400000;           