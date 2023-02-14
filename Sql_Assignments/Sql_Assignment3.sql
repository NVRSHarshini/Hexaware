--1. Create a user defined stored procedure to display “welcome to SQL Server” as message and
--execute it
create proc PrintMsg
as
begin
print 'welcome to sql server Harshini'
end
exec PrintMsg

--...............................................
create  table tbldepartment
(
id int primary key identity,
departmentname varchar(50),
location varchar(100),
departmenthead varchar(50)
)
insert into tbldepartment values
('it','london','rick'),
('payroll','delhi','ron'),
('hr','newyork','christy')
create table tblemployee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
departmentid int foreign key references tbldepartment(id)
)
insert into tblemployee values
('tom','male',3300,1),
('pam','female',4400,2),
('john','male',5000,3),
('sam','male',4000,2)
select * from tblemployee

-----2. create a stored procedure which takes Gender and Depatid as input paramaeter . Based on input
parameter display the Emplyee Name ,Gender Salary from tblEmployee table
create proc Display(@gender varchar(50),@departmentid int)
as
begin
select name,gender,salary from tblemployee 
where @gender=gender and @departmentid=departmentid
end
exec Display'male',2
--drop proc table2

---3. create a stored procedure which takes Gender and Depatid as input paramaeter and
--TotlaEmployeecount as output param. Based on input parameter display the Emplyee Name ,Gender
--Salary from tblEmployee table and Total Employee of given Gender and Department Id

create proc Q3(@gender varchar(10),@departmentid int,@totalcount int output )
as 
begin
select name,gender,salary from tblemployee
where @gender=gender and @departmentid=departmentid
select @totalcount=@@rowcount
end

declare @count int;
exec Q3 @gender='male',@departmentid=2,@totalcount=@count output
select @count as'number of employees'
select * from tblemployee


----4. Display the TotalEmployeeCount by gender using stored procedure?

create proc ByGen(@gender varchar(50))
as 
begin
select count(gender) from tblemployee
where @gender=gender
end
 
 exec ByGen'female'
 --drop proc adding_numbers

 ---5. create a stored procedure two add thee number and display the sum of three numberas output. If
--user does not pass values for input params give default value sum as output.

 create proc Sum_Three(@a int=0,@b int=0 ,@c int=0)
 as
 begin
 declare @result int
 set @result=@a+@b+@c
 select @result as [sum]
 end

 exec Sum_Three 21,10,2000