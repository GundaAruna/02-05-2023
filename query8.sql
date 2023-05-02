create database vehicle;
create table car(no int,name varchar(30),price int,quantity int);
insert into car values(101,'Tata',500000,3),(102,'BMW',600000,2),(103,'KIA',800000,5);
select *from car;
insert into car values(104,'Ford',500000,6),(105,'Audi',700000,2),(106,'scorpio',800000,5);

select count(no),price from car group by  price;
select count(no)as count ,price from car group by  price;
select sum(no) from car group by price having price>500000;
select count(no) from car group by price>100000;
select sum(price) from car group by price;
select * from car order by price desc;
select name from car order by price;
create table visit(entry_date date,price int ,duration int );
insert into visit values("2023-04-26",500000,4),("2023-05-2",700000,8);
select *from visit;
SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YAER,EXTRACT(MONTH FROM ENTRY_DATE)
AS MONTH,EXTRACT(DAY FROM ENTRY_DATE) AS DAY1,ROUND(AVG(PRICE),2) FROM VISIT GROUP BY
EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),EXTRACT(DAY FROM ENTRY_DATE) ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),
EXTRACT(MONTH FROM ENTRY_DATE);
select entry_date,round(avg(price),3) as avg_price from visit group by entry_date  having count(*)>0 order by entry_date;
 DELIMITER // 
CREATE PROCEDURE GetManagerInfo()
  BEGIN
	select * from customer;
  END //

CALL GetManagerInfo()
DELIMITER //
CREATE PROCEDURE GetManagerInfo1()
  BEGIN
	select * from customer where sales_id>205;
  END //

CALL GetManagerInfo1()
