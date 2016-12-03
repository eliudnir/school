/* Tor Hagen */

\W    /* enable warnings! */

use a_plants;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select CU.cust_id, CU.cust_name_last
from a_plants.customers CU
join a_plants.order_headers OH using (cust_id)
where year(OH.order_date) in ('1995', '2010', '2012');

/*  TASK 02 */
select OH.cust_id, OH.order_date,
  case
    when datediff(current_date(), OH.order_date) < 14 then "less than 14 days"
    when datediff(current_date(), OH.order_date) < 30 then "less than 30 days"
    when datediff(current_date(), OH.order_date) < 90 then "less than 90 days"
    when datediff(current_date(), OH.order_date) < 180 then "less than 180 days"
    else "180 days or more"
  end as orderAge
from order_headers OH
order by OH.cust_id, OH.order_date desc;

/*  TASK 03 */
select OH.cust_id, OH.order_id, OH.order_date
from a_plants.order_headers OH
where OH.order_date = last_day(OH.order_date);

/*  TASK 04 */
select PT.plant_id,
concat_ws(" ", PT.genus, PT.species) as "scientific name"
from a_plants.plant_taxonomy PT
join (
  select distinct plant_id
  from a_plants.order_headers
  join a_plants.order_details
  where monthname(order_headers.order_date) in ("September", "October")
) orders_table on PT.plant_id = orders_table.plant_id;

/*  TASK 05 */
set @last_day_of_month := last_day(current_date());
select OH.cust_id, CU.cust_name_last, OH.order_date
from a_plants.order_headers OH
join a_plants.customers CU using (cust_id)
where OH.order_date between date_add(date_sub(@last_day_of_month, interval 7 month), interval 1 day)
and date_sub(@last_day_of_month, interval 1 month);

/*  TASK 06 */

/*  TASK 07 */

/*  TASK 08 */

/*  TASK 09 */

/*  TASK 10 */
