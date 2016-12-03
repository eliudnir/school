/* Tor Hagen */

\W    /* enable warnings! */

use a_testbed;
set SQL_SAFE_UPDATES = 0;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
drop table if exists a_testbed.SmallAnimals;

create table a_testbed.SmallAnimals as
  select AN.cl_id as CLID,
  AN.an_id as ANID,
  substring(AN.an_name, 1, 10) as ANNAME,
  if(AN.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse'), 'Rodent', 'Reptile') as ANTYPE,
  date(extbl.exdate) as RECENTEXAMDATE,
  extbl.exfee as TOTALFEES
  from a_vets.vt_animals AN
  left join (
    select EH.an_id, max(EH.ex_date) as exdate, sum(ED.ex_fee) as exfee
    from a_vets.vt_exam_headers EH
    join a_vets.vt_exam_details ED using (ex_id)
    group by EH.an_id
  ) extbl using (an_id)
  where AN.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
  or AN.an_type in ('snake', 'chelonian', 'crocodilian', 'lizard');

select * from a_testbed.SmallAnimals;

/*  TASK 02 */
alter table a_testbed.SmallAnimals add EXAMSTATUS varchar(15);

update a_testbed.SmallAnimals
set EXAMSTATUS =
case
  when RECENTEXAMDATE > date_sub(current_date(), interval 9 month) then "current"
  when RECENTEXAMDATE > date_sub(current_date(), interval 12 month) then "send notice"
  when RECENTEXAMDATE < date_sub(current_date(), interval 12 month) then "send 2nd notice"
  else "no data-call"
end;

select CLID, ANID, ANNAME, ANTYPE, RECENTEXAMDATE, TOTALFEES, EXAMSTATUS
from a_testbed.SmallAnimals;

/*  TASK 03 */
drop view if exists a_testbed.bk_MnthSales;

create view a_testbed.bk_MnthSales as (
  select OD.book_id as ID, (
    select BO.title
    from a_bkinfo.books BO
    where OD.book_id = BO.book_id
  ) as title,
  extract(year from OH.order_date) as YR,
  extract(month from OH.order_date) as MNTH,
  sum(OD.order_price * OD.quantity) as MnthSales
  from a_bkorders.order_headers OH
  join a_bkorders.order_details OD using (order_id)
  group by OD.book_id,
  extract(year from OH.order_date),
  extract(month from OH.order_date)
  order by OD.book_id, YR, MNTH
);

/*  TASK 04 */
select bkMS.ID, bkMS.title, bkMS.YR, bkMS.MNTH, bkMS.MnthSales
from a_testbed.bk_MnthSales bkMS
where bkMS.MnthSales >= (
  select max(mxMS.MnthSales)
  from a_testbed.bk_MnthSales mxMS
  where mxMS.YR = 2014
  and mxMS.MNTH = 8
)
and bkMS.YR = 2014
and bkMS.MNTH = 8;

/*  TASK 05 */
insert into a_bkorders.order_headers (order_id, order_date, cust_id) values (999990, '2014-08-13', 234138);
insert into a_bkorders.order_headers (order_id, order_date, cust_id) values (999991, '2014-08-14', 200368);
insert into a_bkorders.order_details (order_id, order_line, book_id, quantity, order_price) values (999990, 1, 1108, 1, 3398);
insert into a_bkorders.order_details (order_id, order_line, book_id, quantity, order_price) values (999991, 1, 1128, 1, 6451.85);
insert into a_bkorders.order_details (order_id, order_line, book_id, quantity, order_price) values (999991, 2, 1128, 1, 9500);

select bkMS.ID, bkMS.title, bkMS.YR, bkMS.MNTH, bkMS.MnthSales
from a_testbed.bk_MnthSales bkMS
where bkMS.MnthSales >= (
  select max(mxMS.MnthSales)
  from a_testbed.bk_MnthSales mxMS
  where mxMS.YR = 2014
  and mxMS.MNTH = 8
)
and bkMS.YR = 2014
and bkMS.MNTH = 8;

/*  TASK 06 */
delete
from a_bkorders.order_details
where order_id = 999990;

delete
from a_bkorders.order_headers
where order_id = 999990;

delete
from a_bkorders.order_details
where order_id = 999991;

delete
from a_bkorders.order_headers
where order_id = 999991;

/*  TASK 07 */

/*  TASK 08 */

/*  TASK 09 */

/*  TASK 10 */
