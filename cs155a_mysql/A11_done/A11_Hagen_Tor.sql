/* Tor Hagen */

\W    /* enable warnings! */

use a_bkorders;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select BO.book_id, BO.title
from a_bkinfo.books BO
where BO.book_id in (
  select BT.book_id
  from a_bkinfo.book_topics BT
  where BT.topic_id in ("SQL", "DB")
)
and BO.book_id in (
  select OD.book_id
  from a_bkorders.order_details OD
)
order by BO.book_id;

/*  TASK 02 */
select BO.book_id, BO.title
from a_bkinfo.books BO
where BO.book_id in (
  select OD.book_id
  from a_bkorders.order_details OD
)
and BO.book_id in (
  select BTdb.book_id
  from a_bkinfo.book_topics BTdb
  where BTdb.topic_id = "DB"
)
and BO.book_id in (
  select BTmany.book_id
  from a_bkinfo.book_topics BTmany
  group by BTmany.book_id
  having count(BTmany.topic_id) > 1
)
order by BO.book_id;

/*  TASK 03 */
select BO.book_id, BO.title
from a_bkinfo.books BO
where BO.book_id in (
  select OD.book_id
  from a_bkorders.order_details OD
)
and BO.book_id in (
  select BTsql.book_id
  from a_bkinfo.book_topics BTsql
  where BTsql.topic_id = "SQL"
)
and BO.book_id not in (
  select BTdb.book_id
  from a_bkinfo.book_topics BTdb
  where BTdb.topic_id = "DB"
);

/*  TASK 04 */
select BO.book_id, BO.title, BO.year_publd
from a_bkinfo.books BO
where BO.book_id in (
  select ODextid.book_id
  from a_bkorders.order_details ODextid
  group by ODextid.book_id
  having sum(ODextid.quantity * ODextid.order_price) >= all (
    select sum(ODextall.quantity * ODextall.order_price)
    from a_bkorders.order_details ODextall
    group by ODextall.book_id
  )
);

/*  TASK 05 */
select concat_ws(" quarter ", year(OH.order_date), quarter(OH.order_date)) as "Low Order Quarter"
from a_bkorders.order_headers OH
group by year(OH.order_date), quarter(OH.order_date)
having count(*) <= all (
  select count(*)
  from a_bkorders.order_headers OHquartcnt
  group by year(OHquartcnt.order_date), quarter(OHquartcnt.order_date)
);

/*  TASK 06 */
select CU.cust_id, CU.cust_name_last
from a_bkorders.customers CU
where CU.cust_id in (
  select OH.cust_id
  from a_bkorders.order_headers OH
  where year(OH.order_date) = year(current_date()) -1
  group by OH.cust_id
  having count(OH.order_date) between 3 and 5
)
order by CU.cust_id;

/*  TASK 07 */
select BO.book_id, BO.title
from a_bkinfo.books BO
where BO.book_id in (
  select OD.book_id
  from a_bkorders.order_details OD
  group by OD.book_id
  having sum(OD.quantity) > 500
)
order by BO.book_id;

/*  TASK 08 */
select BO.book_id, BO.title, BO.list_price
from a_bkinfo.books BO
where BO.list_price > all (
  select pr_filt.list_price
  from a_bkinfo.books pr_filt
  where pr_filt.book_id in (
    select BTdb.book_id
    from a_bkinfo.book_topics BTdb
    where BTdb.topic_id = "DB"
  )
)
order by BO.book_id;

/*  TASK 09 */

/*  TASK 10 */
