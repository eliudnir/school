LOOK FOR WILDCARD PATTERN IN STRING:
like '%gsdga%'

RANDOM VALUE BETWEEN 10 AND 50:
set @rand = floor(rand() * 41) + 10;

order of query (written) vs (exec):
select
from
join
where
group by
having
order by

case
  when el = some then this
  when el = someother then that
  when el = somethang then those
else mebbethis
end as 'Something'

if(something, iftruethis, ifnotthis)

!!!!! DATE FUNCTION EXAMPLE:
-  when date_add(OH.order_date, interval 14 day) > curdate() then 'less than 14 days'

last day of any month comparison:
-  where some_date = last_day(some_date)

previous 6 months:
-  where some_date between date_sub(last_day(curdate()), interval 7 month)
   and date_sub(last_day(curdate()), interval 1 month)

last quarter:
- set @lastQtr := if(( quarter( current_date() ) -1) = 0, 4, quarter( current_date() ) -1)
- set @lastQtrYr := if( @lastQtr = 4, year( current_date() ) -1, year( current_date() ))

One can also Max() and Min() on dates in aggregates etc.!

get more string function examples here!
get more numeric examples here!
and some null functions here!

!!!!AGGREGATE FUNCTIONS!!!
Avg(), Sum(), Max(), Min()

SubQ with Aggregate (proper way to find synchronized info about a productex):
select something, somethingelse, something2
from wherever
where something = (
  select max(something)
  from wherever
);

CROSSTABBING out a report:
select
  count(case when BT.topic_id in ('CMP') then BO.book_id else null end) as "Computer Science",
  count(case when BT.topic_id in ('DB', 'SQL', 'SSRV', 'MySQL', 'ORA', 'ADO') then BO.book_id else null end) as "Database Systems",
  count(case when BT.topic_id in ('NOSQL', 'XML', 'DB') then BO.book_id else null end) as "Data Storage Techniques",
  count(*) as "All Books"
from a_bkinfo.books BO
join a_bkinfo.book_topics BT using (book_id)

QUERY PATTERN FOR IN 1, and EITHER 2 or 3, BUT NOT BOTH 2 or 3:
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
)

QUERY PATTERN FOR BEST SELLING ITEM ETC. :
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
)

AND SIMILARLY LOWEST SELLING QUARTER:
select concat_ws(" quarter ", year(OH.order_date), quarter(OH.order_date)) as "Low Order Quarter"
from a_bkorders.order_headers OH
group by year(OH.order_date), quarter(OH.order_date)
having count(*) <= all (
  select count(*)
  from a_bkorders.order_headers OHquartcnt
  group by year(OHquartcnt.order_date), quarter(OHquartcnt.order_date)
)

MATHY NUMERIC FUNCTIONS:
Abs(n) 			    - Absolute Value of n is returned
Power(n, n2) 	  - Raises n to the power n2
Sqrt(n)			    - Finds the square root of n
Round(n, n2)	  - Rounds n to the precission specified by n2
Truncate(n, n2)	- Drop digits off n indicated by n2 truncate(110.512, -2) --> 100
				        - truncate(110.512, 2) --> 110.51
Ceiling(n)		  - returns smallest int greater than or equal to n ceiling(10.2) --> 11
Floor(n)		    - returns largest int less than or equal to n
Mod(n, n2)		  - Returns remainder after division
Rand()			    - n is optional as a seed for repeating values

STRINGY FUNCTIONS:
Concat('Cant', 'stop')			- concatenate all the strings
concat_ws()					  	- same as concat except first argument goes between all other strings
upper('string')					- change string to upper case
Lower('string')					- change string to lower case
Rtrim('string')					- remove right space
Ltrim()							    - remove left space
Rpad('string', length, 'c')		- adds c to right of 'string' at specified length (can trunc)
Lpad()							-
Substring('str', nstart, ncount)- returns the string from nstart to ncount
								                (-neg nstart pos means count from end)
Substring_index('str', delim, count)
								        - substring_index('cat,ant,fish', ',', 1) --> 'cat'
								          substring_index('cat,ant,fish,fly,foam', ',', 3) --> 'cat,ant,fish'
left('string', count)	    - select from start/left of string and to count
right()					- opposite of left
Instr('string', 'test')	- if 'test' is in 'string' its location is returned as an int
Locate('test', 'string')- same as Instr() except argument swapped - also optional third arg: startcountat
Repeat('string', count)	- repeats the 'string' count times
Replace('string', 'toberepl', 'replacer')
						            - replaces all 'toberepl' in 'string' with the 'replacer'
Reverse('string')		    - reverses input string
Ascii()					        - returns ascii num equal to first char in input string
Char()        					- returns character associated with ascci num input
ELT(n, 'some,list,of,strings')	- returns list value corresponding to n location
Field('find', 'candidate,list')	- returns 0 or the position of 'find' in 'candidate,list'
Find_in_set('search', 'set,of,things,to,look')	- returns location of 'search' or 0

NULLER FUNCTIONS:
coalesce(something, 'instead') 		- if somehting is null then 'instead' is returned
ifnull(something, 'whatever') 		- same
nullif(p1, p2) 			        			- returns null if p1=p2, else p1 is returned
isnull(n)					            		- returns 0 or 1 depending on if input is null or not

DATE FYNCTS:
date_add(date, interval n day/year/month) - adds n time to date
date_sub(date, interval n day/year/month) - same as above
dateDiff(date1, date2) 					          - returns number of days between date1 and date2
last_day(date) 							              - returns the last day of date input as date

Custom FUnctions Ex.:

delimiter #

create FUNCTION Bonus_1 (
  in_salary decimal(9,2)
)
  RETURNS decimal(9,2)
BEGIN
/* local variable declaration */
  declare c_bonus_rate decimal(9,2);
  declare v_bonus decimal(9,2);
  set c_bonus_rate := 0.15;
  set v_bonus := in_salary * c_bonus_rate;
  RETURN v_bonus;
END;
#
