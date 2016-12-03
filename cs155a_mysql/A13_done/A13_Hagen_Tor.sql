/* Tor Hagen */

\W    /* enable warnings! */

use a_bkorders;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select CU.cust_id, CU.cust_name_last, (
  select count(OH.cust_id)
  from a_bkorders.order_headers OH
  where OH.cust_id = CU.cust_id
) as "number of orders"
from a_bkorders.customers CU
where CU.cust_id <= 250000
order by CU.cust_id;

/*  TASK 02 */
select CU.cust_id, CU.cust_name_last
from a_bkorders.customers CU
where exists (
  select 1
  from a_bkorders.order_headers OHjan
  where CU.cust_id = OHjan.cust_id
  and extract(year from OHjan.order_date) = extract(year from current_date())
  and extract(month from OHjan.order_date) = 1
)
and exists (
  select 1
  from a_bkorders.order_headers OHfeb
  where CU.cust_id = OHfeb.cust_id
  and extract(year from OHfeb.order_date) = extract(year from current_date())
  and extract(month from OHfeb.order_date) = 2
)
and exists (
  select 1
  from a_bkorders.order_headers OHmar
  where CU.cust_id = OHmar.cust_id
  and extract(year from OHmar.order_date) = extract(year from current_date())
  and extract(month from OHmar.order_date) = 3
)
order by CU.cust_id;

/*  TASK 03 */
select AU.author_name_first, AU.author_name_last, AU.author_id
from a_bkinfo.authors AU
where exists (
  select BAUnum.author_id, count(BAUnum.book_id) as numbooks
  from a_bkinfo.book_authors BAUnum
  where BAUnum.author_id = AU.author_id
  group by BAUnum.author_id
  having numbooks > 1
)
and not exists (
  select *
  from a_bkinfo.book_authors BAUord
  where BAUord.author_id = AU.author_id
  and BAUord.book_id in (
    select OD.book_id
    from a_bkorders.order_details OD
  )
)
order by AU.author_id;

/*  TASK 04 */
select BO.book_id, BO.title
from a_bkinfo.books BO
where exists (
  select BT.book_id, count(BT.topic_id) as numberinprog
  from a_bkinfo.book_topics BT
  where BT.topic_id in ("PGM", "VB", "NET", "ADO")
  and BT.book_id = BO.book_id
  group by BT.book_id
  having numberinprog = 2
)
order by BO.book_id;

/*  TASK 05 */
select OH.order_date, OH.order_id, OH.cust_id, (
  select CS.cust_name_last
  from a_bkorders.customers CS
  where OH.cust_id = CS.cust_id
) as customer, (
  select sum(ODq.quantity)
  from a_bkorders.order_details ODq
  where OH.order_id = ODq.order_id
  group by ODq.order_id
) as NumberBooks, (
  select sum(ODp.order_price)
  from a_bkorders.order_details ODp
  where OH.order_id = ODp.order_id
  group by ODp.order_id
) as OrderCost
from a_bkorders.order_headers OH
where extract(year from OH.order_date) = extract(year from current_date()) -1
and extract(quarter from OH.order_date) = 1
order by OH.order_date;

/*  TASK 06 */
select CS.cust_id, CS.cust_name_last
from a_bkorders.customers CS
where (
  select count(OHprevq.order_id)
  from a_bkorders.order_headers OHprevq
  where extract(year from OHprevq.order_date) = extract(year from current_date()) -1
  and extract(quarter from OHprevq.order_date) = 1
  and OHprevq.cust_id = CS.cust_id
  group by OHprevq.cust_id
) >= (
  select count(OHnowq.order_id)
  from a_bkorders.order_headers OHnowq
  where extract(year from OHnowq.order_date) = extract(year from current_date())
  and extract(quarter from OHnowq.order_date) = 1
  and OHnowq.cust_id = CS.cust_id
  group by OHnowq.cust_id
)
order by CS.cust_id;

/*  TASK 07 */

/*  TASK 08 */

/*  TASK 09 */

/*  TASK 10 */
