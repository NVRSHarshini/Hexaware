create table tprod(id int identity primary key,name nvarchar(50))
create table tsales(id int primary key identity,
pid int foreign key references tprod(id),
price int, Qsold int)

insert into  tprod values('tv'),('lap'),('kite');
insert into  tsales values(3,450,5),(2,250,7),(3,450,4),(3,450,9);

select * from tprod
select * from tsales

select * from tprod where id   in(select distinct pid from tsales);
select * from tprod where id  not in(select distinct pid from tsales);