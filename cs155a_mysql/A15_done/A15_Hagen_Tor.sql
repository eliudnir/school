/* Tor Hagen */

\W    /* enable warnings! */

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select OH.order_date,
count(OD.order_id) as NumberOrders,
sum(OD.quantity * OD.order_price) as AmntDue,
sum(OD.quantity) as NumbBooksPurch
from a_bkorders.order_headers OH
left join a_bkorders.order_details OD using (order_id)
where year(OH.order_date) = 2015
group by OH.order_date with rollup;

/*  TASK 02 */
select coalesce(dataTbl.ordyear, 'Grand Total') as "Year",
case
  when dataTbl.ordyear is null then '...........'
	else coalesce(dataTbl.ordmnth, "Year Total")
end as "Month",
case
  when dataTbl.ordmnth is null then '...........'
	else coalesce(dataTbl.orderid, "Month Total")
end as "Order_ID",
dataTbl.amntdue as "AmntDue",
dataTbl.numbbookspurch as "NumbBooksPurch"
from (
	select year(OH.order_date) as ordyear,
	month(OH.order_date) as ordmnth,
	OH.order_id as orderid,
	sum(OD.quantity * OD.order_price) as amntdue,
	count(OD.quantity) as numbbookspurch
	from a_bkorders.order_headers OH
	left join a_bkorders.order_details OD using (order_id)
  where OH.order_date between '2014-10-01' and '2015-02-28'
	group by year(OH.order_date), month(OH.order_date), OH.order_id with rollup
) dataTbl;

/*  TASK 03 */
select coalesce(dataTbl.ordyear, "Grand Total") as "",
"Yearly Total" as "",
dataTbl.numborders as "NumberOrders",
dataTbl.amntdue as "AmntDue",
dataTbl.numbbookspurch as "NumbBooksPurch"
from (
	select year(OH.order_date) as ordyear,
  count(OH.order_id) as numborders,
  sum(OD.quantity * OD.order_price) as amntdue,
  count(OD.quantity) as numbbookspurch
	from a_bkorders.order_headers OH
  left join a_bkorders.order_details OD using (order_id)
	group by year(OH.order_date) with rollup
) dataTbl;

/*  TASK 04 */
select coalesce(dataTbl.authorid, "All Authors") as AuthorID,
coalesce(dataTbl.bookid, "All books") as BookID,
dataTbl.totalquant as TotalQuantity,
coalesce(dataTbl.totalsales, "No sales") as TotalSales
from (
	select AU.author_id as authorid,
	BO.book_id as bookid,
	coalesce(sum(OD.quantity), 0) as totalquant,
	sum(OD.order_price * OD.quantity) as totalsales
	from a_bkinfo.authors AU
	join a_bkinfo.book_authors BO using (author_id)
	left join a_bkorders.order_details OD using (book_id)
	group by AU.author_id, BO.book_id with rollup
) dataTbl;

/*  TASK 05 */
select BO1.book_id as Book_ID,
BO1.page_count as Page_count,
(
	select count(distinct floor(page_count / 150))
  from a_bkinfo.books BO2
  where floor(BO2.page_count / 150) >= floor(BO1.page_count / 150)
  and BO2.book_id <= 1500
) as "Rank"
from a_bkinfo.books BO1
where BO1.page_count is not null
and BO1.book_id <= 1500
order by rank, BO1.page_count desc;

/*  TASK 06 */
select distinct tbl.semesterdate as OrderDate,
coalesce(sls.quantity, 0) as QuantityOrdered,
coalesce(sls.totalsales, 0.00) as TotalSales
from (
	select semesterdate
	from (
		select numvalue, adddate('2014-03-01', numvalue
	) as semesterdate
	from (
		select b1.val + b2.val + b4.val + b8.val + b16.val
		+ b32.val + b64.val + b128.val as numvalue
		from (
			select 0 val union all select 1) b1 cross join
			( select 0 val union all select 2) b2 cross join
			( select 0 val union all select 4) b4 cross join
			( select 0 val union all select 8) b8 cross join
			( select 0 val union all select 16) b16 cross join
			( select 0 val union all select 32) b32 cross join
			( select 0 val union all select 64) b64 cross join
			( select 0 val union all select 128) b128
		) as gennum
	) as calendar
	where semesterdate between '2014-03-01' and '2014-03-31'
) tbl
left join (
	select OH.order_date,
  sum(OD.quantity) as quantity,
  sum(OD.quantity * OD.order_price) as totalsales
	from a_bkorders.order_headers OH
  left join a_bkorders.order_details OD using (order_id)
  group by OH.order_date
) sls on (tbl.semesterdate = sls.order_date)
order by OrderDate;

/*  TASK 07 */

/*  TASK 08 */

/*  TASK 09 */

/*  TASK 10 */
