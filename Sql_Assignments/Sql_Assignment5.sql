CREATE TABLE Employee
(  
    EmployeeID int NOT NULL,
    FirstName nvarchar(50) NOT NULL,
    Salary int,    
);

INSERT INTO Employee VALUES(1,'Harshini',9000),(2, 'Neena',6000),
(3, 'John',8000);

--------------------------Triggers----------------------------
CREATE TRIGGER EmployeeInsert
ON Employee
FOR INSERT
AS Select * from Employee;
  
INSERT INTO Employee VALUES(4,'Sam',7000)


CREATE TABLE tblEmployeeaudit (
   ID INT IDENTITY(1,1) NOT NULL , 
   EmployeeID INT NOT NULL ,
   FirstName NVARCHAR(50) NOT NULL,
   Salary int, 
     );

CREATE TRIGGER trgEmployeeInsert
ON Employee
FOR Insert
AS
   INSERT INTO tblEmployeeaudit(EmployeeID, FirstName, Salary)
   SELECT EmployeeID, Firstname, Salary 
   FROM INSERTED;

INSERT INTO Employee VALUES(5,'Jam',7500)
select * from tblEmployeeaudit 

CREATE TRIGGER triggerDelete
ON Employee
FOR DELETE
AS
   INSERT INTO tblEmployeeaudit(EmployeeID, FirstName, Salary)
   SELECT EmployeeID, Firstname, Salary 
   FROM DELETED;
   drop procedure trgDelete

Delete from Employee where FirstName='Jam';
select * from tblEmployeeaudit 
