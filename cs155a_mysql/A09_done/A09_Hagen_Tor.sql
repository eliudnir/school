/* Tor Hagen */

\W    /* enable warnings! */

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select sum(OD.quantity * OD.order_price) as AmtDue
from a_bkorders.order_details OD
where OD.book_id = 1894;

/*  TASK 02 */
set @curyear := year(current_date());
select @curyear;
select count(distinct order_id) as NumberOfOrders
from a_bkorders.order_headers OH
join a_bkorders.order_details OD using (order_id)
where OD.book_id = 1894
and year(OH.order_date) = @curyear -1;

/*  TASK 03 */
select CU.cust_id as CustID,
CU.cust_name_last as CustName,
sum(OD.quantity) as BookTotal,
case
  when year(OH.order_date) = year(current_date()) then sum(OD.quantity)
else null
end as CurrentYearBookTotal
from a_bkorders.customers CU
left join a_bkorders.order_headers OH using (cust_id)
left join a_bkorders.order_details OD using (order_id)
group by CU.cust_id;

/*  TASK 04 */
set @lastQtr := if(( quarter( current_date() ) -1) = 0, 4, quarter( current_date() ) -1);
set @lastQtrYr := if( @lastQtr = 4, year( current_date() ) -1, year( current_date() ));
select @lastQtr, @lastQtrYr;
select count(OH.order_id) as NumOfOrdersPrevQuarter,
  count(distinct OH.cust_id) as CustWithOrdersPrevQuart
from a_bkorders.order_headers OH
where quarter(OH.order_date) = @lastQtr and
year(OH.order_date) = @lastQtrYr;

/*  TASK 05 */
select book_id, title
from a_bkorders.order_details OD
join a_bkinfo.books BO using (book_id)
join a_bkinfo.book_topics BT using (book_id)
where BT.topic_id in ('FCT', 'POE')
group by book_id
having count(*) = (
  select max(topicOrders.BookOrderCount)
  from (
    select count(*) as BookOrderCount
    from a_bkorders.order_details OD
    join a_bkinfo.books BO using (book_id)
    join a_bkinfo.book_topics BT using (book_id)
    where BT.topic_id in ('FCT', 'POE')
    group by book_id
  ) topicOrders
);

/*  TASK 06 */
select
  count(case when BT.topic_id in ('CMP') then BO.book_id else null end) as "Computer Science",
  count(case when BT.topic_id in ('DB', 'SQL', 'SSRV', 'MySQL', 'ORA', 'ADO') then BO.book_id else null end) as "Database Systems",
  count(case when BT.topic_id in ('NOSQL', 'XML', 'DB') then BO.book_id else null end) as "Data Storage Techniques",
  count(*) as "All Books"
from a_bkinfo.books BO
join a_bkinfo.book_topics BT using (book_id);

/*  TASK 07 */
select CU.cust_id as CustID, CU.cust_name_last as CustName,
case
  when OH.order_date IS NOT NULL then max(order_date)
  else 'No orders'
end MostRecentOrder
from a_bkorders.order_details OD
join a_bkorders.order_headers OH using (order_id)
right join a_bkorders.customers CU using (cust_id)
group by CU.cust_id;

/*  TASK 08 */
select CU.cust_id, CU.cust_name_last
from a_bkorders.customers CU
join a_bkorders.order_headers OH using (cust_id)
join a_bkorders.order_details OD using (order_id)
join a_bkinfo.book_topics BT using (book_id)
where BT.topic_id IN (
  select TP.topic_id
  from a_bkinfo.book_topics TP
  where TP.topic_id in ('SQL') and TP.book_id not in (1142)
)
group by CU.cust_id
having sum(quantity * order_price) > 500;

/*  TASK 09 */

/*  TASK 10 */
