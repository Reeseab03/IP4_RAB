use `premier_products`;
-- question 1 --
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;
-- question 2 --
select last_name, first_name, sales_rep_num, city from sales_rep;
-- question 3 --
select order_num, customer_num from orders;
-- question 4 --
select * from order_line
limit 2;
-- question 5 --
select * 
from customer
where sales_rep_num=20;
-- question 6 --
select customer_name, balance, credit_limit
from customer
where sales_rep_num=20;
-- question 7 --
select p.part_num, o.num_ordered, o.quoted_price, (num_ordered*quoted_price) as "Total Price"
from order_line o
join part p on p.part_num=o.part_num
where order_num=21617
limit 1;
-- question 8 --
select * 
from orders
where order_date between '2010-10-20' and '2010-10-22';
-- question 9 --
select *
from part
where part_description like 'D%er';
-- question 10 --
select sum(balance)
from customer;
-- question 11 --
select min(balance)
from customer;
-- question 12 --
select count(*)
from customer;
-- question 13 --
select order_num
from order_line
where quoted_price>500 and quoted_price<1000
order by order_num desc;
-- question 14 --
create table Customers as
select c.customer_name, s.last_name, s.first_name 
from customer c
join sales_rep s on s.sales_rep_num=c.sales_rep_num; 