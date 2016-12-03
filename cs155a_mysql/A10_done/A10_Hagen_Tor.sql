/* Tor Hagen */

\W    /* enable warnings! */

use a_bkorders;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
drop view if exists a_bkorders.OrdersPriorYear;

create view a_bkorders.OrdersPriorYear as (
  select distinct CU.cust_id as c_id,
  concat_ws(", ", CU.cust_name_last, CU.cust_name_first) as c_name,
  cast(OH.order_date as date) as c_orderdate
  from a_bkorders.customers CU
  join a_bkorders.order_headers OH using (cust_id)
  where year(order_date) = year(current_date()) -1
  order by order_date
);

/*  TASK 02 */
select c_id, c_name
from a_bkorders.OrdersPriorYear
where month(c_orderdate) = 3
union
select c_id, c_name
from a_bkorders.OrdersPriorYear
where month(c_orderdate) = 6
union
select c_id, c_name
from a_bkorders.OrdersPriorYear
where month(c_orderdate) = 9;

/*  TASK 03 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id not in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) in (3, 6, 9)
);

/*  TASK 04 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 3
)
and c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 6
)
and c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 9
);

/*  TASK 05 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 1
)
and c_id not in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) in (2, 3)
);

/*  TASK 06 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 3
)
and c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) in (4, 5)
);

/*  TASK 07 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 1
)
and c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 2
  or month(c_orderdate) = 3
)
and c_id not in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where c_id in (
    select c_id
    from a_bkorders.OrdersPriorYear
    where month(c_orderdate) = 2
  )
  and c_id in (
    select c_id
    from a_bkorders.OrdersPriorYear
    where month(c_orderdate) = 3
  )
);

/*  TASK 08 */
select distinct c_id, c_name
from a_bkorders.OrdersPriorYear
where c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 4
)
and c_id in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 5
)
and c_id not in (
  select c_id
  from a_bkorders.OrdersPriorYear
  where month(c_orderdate) = 6
);

/*  TASK 09 */

/*  TASK 10 */
