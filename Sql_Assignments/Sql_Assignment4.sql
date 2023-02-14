--drop table student
create table student
(
id int primary key,
name varchar(50),
gender varchar(10),
branch varchar(20),
branchid int
)


insert into student values(1,'Harshini','female','cse',230)
insert into student values(2,'Raji','female','IT',240)
insert into student values(3, 'lohit','male','ece',250)
insert into student values(4,'suman','male','eee',260)
insert into student values(5,'Harika','female','mech',270)
insert into student values(6,'Manasa','female','cse',230)

select * from student

--drop function getstudentdetails

create function stuInfoByBranchId(@id int)
returns table
as
return
(
select * from student where branchid=@id
)
select * from stuInfoByBranchId(230)

create function stuInfoByGen(@gender varchar(10))
returns table
as
return
(
select * from student where gender=@gender
)
select * from stuInfoByGen('female')

CREATE FUNCTION NetSales (@orderID INT)
RETURNS TABLE
AS
RETURN (
   SELECT order_id, SUM(list_price) AS NetSales
  FROM sales.order_items
   WHERE order_id = @orderID
   GROUP BY order_id
)

 select* from NetSales(1)