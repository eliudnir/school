Use a_testbed;

/*   demo 01  */
select 'Hello world', 2015 ;

/*   demo 02  */
select 'Hello world' as Greeting, 2015  as Year;


/*   demo 03  */
select   5 * 3 as Col1
,        5 + 8   as Col2
,        5 + 3 * 8 as Col4
,       (5 + 3 ) * 8 as Col5
,       (5 + 3 )  /  3 
;

select 21 % 5, 21 % 6, 21 % 8;

select 21 / 5, 21 div 5, 24 / 5, 24 div 5;



/*   demo 04  */
Create table a_testbed.z_tst_calc (
   item_id int primary key
 , quantity int not null
 , price  decimal (6,2)
 );
 
Insert into a_testbed.z_tst_calc values
(101,  1, 125.12) 
,
(102,  5,  30.00) 
,
(103, 10, 101.05) 
,
(104, 1,  75.50) 
,
(105, 12,  33.95) 
;
 select * from a_testbed.z_tst_calc;


/*   demo 05  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
From a_testbed.z_tst_calc;

/*   demo 06  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , price * quantity* 1.085 as ExtCostWithTax
From a_testbed.z_tst_calc;


/*   demo 07  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , extendedcost + 5  as ExtCostWithShipping
From a_testbed.z_tst_calc;


/*   demo 08  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , "extendedcost" + 5  as ExtCostWithShipping
From a_testbed.z_tst_calc;

/*   demo 09  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , round(price * quantity* 1.085,2) as ExtCostWithTax
From a_testbed.z_tst_calc;

/*   demo 10  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , round(price * quantity* 1.085,2) as ExtCostWithTax
From a_testbed.z_tst_calc
Order by round(price * quantity* 1.085,2) ;

/*   demo 11  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , round(price * quantity* 1.085,2) as ExtCostWithTax
From a_testbed.z_tst_calc
Order by `ExtCostWithTax` ;


/*   demo 12  */
Select item_id
 , price
 , quantity
 , price * quantity as extendedcost
 , (price- 50) * quantity as extendedcost
From a_testbed.z_tst_calc;

/*   demo 13  */
select an_name
, an_type
, concat(an_name,  ' is a ', an_type) as Animal
From a_vets.vt_animals
limit 8;

/*   demo 14  */
select 
concat('ID: ', an_id, ' ' , an_name,  ' was born on  ', an_dob) as Animal
From a_vets.vt_animals
order by an_name desc
limit 8;

/*   demo 15  */
create table a_testbed.z_tst_nulls (
  col_id      int          not null primary key
, col_string  varchar(10)  null
, col_int     int          null
, col_float   float        null
);
insert into a_testbed.z_tst_nulls  values (1, 'abc', 10,   10.567);
insert into a_testbed.z_tst_nulls  values (2, 'abc', null, 20.222);
insert into a_testbed.z_tst_nulls  values (3, null,  30,   null);
insert into a_testbed.z_tst_nulls  values (4, null,  null, null);

select * from a_testbed.z_tst_nulls ;

/*   demo 16  */
select col_id
, concat('XYZ', col_string)  as stringTest
, 25 + col_int    as intTest
, 25 + col_float  as floatTest
from a_testbed.z_tst_nulls;

/*   demo 17  */
insert into a_testbed.z_tst_nulls  values (5, '12',  12, 12.2);

select 
  col_string
, col_string + 3 as stringTest
from a_testbed.z_tst_nulls;


/*   demo 18  */
select col_id
, coalesce(col_string, 'DataMissing')  as stringTest
, coalesce(col_int, 'NoData')  as intTest1
, coalesce(col_int, -20)  as intTest2
, coalesce(col_float, 'NoData')  as floatTest1
, coalesce(col_float, 29.95)  as floatTest2
from a_testbed.z_tst_nulls;
