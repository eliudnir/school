/* Tor Hagen */

\W    /* enable warnings! */

use a_bkinfo;

delimiter #

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/* function source code */
show create function a_testbed.AdjustedPrice\G

/*  TASK 01 */
select test_data.testrun,
test_data.price,
test_data.quantity,
test_data.expected,
a_testbed.AdjustedPrice(test_data.price, test_data.quantity) as "Actual",
test_data.expected - a_testbed.AdjustedPrice(test_data.price, test_data.quantity) as "Problem"
from (
    select 1 as testrun, 9.50 as price, 10 as quantity, 9.50 as expected
  union all
    select 2, 15.00, 1, 15.00
  union all
    select 3, 15.00, 3, 15.00
  union all
    select 4, 20.00, 99, 17.00
  union all
    select 5, 30.00, 26, 25.50
  union all
    select 6, 30.00, 200, 24.60
  union all
    select 7, 15.00, 25, 13.50
  union all
    select 8, 4.50, 200, 4.50
  union all
    select 9, 15.00, 101, 12.30
  union all
    select 10, 15.00, 0, 15.00
) test_data#

/*  TASK 02 */
select tst.order_id, tst.book_id, tst.LIST, tst.quantity,
tst.ExpctdPrice, tst.OrderPrice, tst.PricingError
from (
  select OD.order_id, OD.book_id, BO.list_price as "LIST", OD.quantity,
  a_testbed.AdjustedPrice(BO.list_price, OD.quantity) as "ExpctdPrice",
  OD.order_price as "OrderPrice",
  a_testbed.AdjustedPrice(BO.list_price, OD.quantity) - OD.order_price as "PricingError"
  from a_bkorders.order_details OD
  join a_bkinfo.books BO using (book_id)
) tst
where tst.PricingError > (tst.ExpctdPrice * 0.2)
order by tst.book_id, tst.order_id#

/* function source code */
show create function a_testbed.PrevMonth\G

/*  TASK 03 */
select tst.testrun, tst.date_in, tst.month_in,
a_testbed.PrevMonth(tst.date_in, tst.month_in) as "actual",
tst.expected,
case tst.expected
  when a_testbed.PrevMonth(tst.date_in, tst.month_in) then "pass"
  else "***FAIL***"
end as "status"
from (
    select 1 as testrun, null as "date_in", 0 as "month_in", "2015-04" as "expected"
  union all
    select 2, '2012-04-01', 0, "2012-04"
  union all
    select 3, '2012-04-10', 18, "2010-10"
  union all
    select 4, '2014-04-10', null, "NULL"
  union all
    select 5, '2013-03-02', -3, "NULL"
  union all
    select 6, '2015-04-01', 30, "2012-10"
) tst#

/*  TASK 04 */
select count(*) as "NumberOrders",
count(distinct tbl_data.cust_id) as "NumberCustWithOrders"
from (
  select OH.order_id, OH.cust_id
  from a_bkorders.order_headers OH
  where substring_index(OH.order_date, '-', 2)
  in (a_testbed.PrevMonth(current_date(), 2), a_testbed.PrevMonth(current_date(), 1))
) tbl_data#

/*  TASK 05 */

/*  TASK 06 */

/*  TASK 07 */

/*  TASK 08 */

/*  TASK 09 */

/*  TASK 10 */
