DROP TABLE customer;
create table customer(
CUSTOMER_NUMBER VARCHAR(30) PRIMARY KEY,
FIRSTNAME VARCHAR(30) not null,
middlename varchar(30),
lastname varchar(30),
CUSTOMER_CITY VARCHAR(20) not null,
CUSTOMER_CONTACT_NO BIGINT not null,
occupation varchar(20) not null,
CUSTOMER_DATE_OF_BIRTH date) ;
select * from customer;

--desc  customer;

insert into customer values('C0001','RAMESH','CHANDRA','SHARMA','DELHI',9543198345,'SERVICE','1976-12-06');
insert into customer values('C0002','AVINASH','SUNDER','MINHA','DELHI',9876532109,'SERVICE','1974-10-16');
insert into customer values('C0003','RAHUL','NULL','RASTOGI','DELHI',9765178901,'STUDENT','1981-09-26');
insert into customer values('C0004','PARUL','NULL','GANDHI','DELHI',987653109,'HOUSEWIFE','1976-11-03');
insert into customer values('C0005','NAVEEN','CHANDRA','AEDEKAR','MUMBAI',8976523190,'SERVICE','1976-09-19');
insert into customer values('C0006','CHIRESH','NULL','BARWE','MUMBAI',765198321,'STUDENT','1992-11-06');
insert into customer values('C0007','AMIT','KUMAR','BORKAR','MUMBAI',9875189761,'STUDENT','1981-09-06');
insert into customer values('C0008','NISHA','NULL','DMLE','MUMBAI',7954198761,'SERVICE','1975-12-03');
insert into customer values('C0009','BHISHEK','NULL','DUTTA','KOLKATA',856198761,'SERVICE','1973-05-22');
insert into customer values('C0010','SHANKAR','NULL','NAIR','CHENNAI',8765489076,'SERVICE','1976-07-12');
--insert into customer values(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

SELECT CUSTOMER_CITY,COUNT(CUSTOMER_NUMBER) FROM customer group by  CUSTOMER_CITY;
SELECT DISTINCT CUSTOMER_CITY FROM customer;
SELECT occupation,COUNT(CUSTOMER_NUMBER) FROM customer group by  occupation;
SELECT * FROM customer ORDER BY FIRSTNAME;
SELECT * FROM customer ORDER BY CUSTOMER_DATE_OF_BIRTH DESC,FIRSTNAME ASC;
SELECT * FROM customer WHERE middlename ='NULL';
 
 