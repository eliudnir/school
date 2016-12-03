/*
task1
*/
select PL.common_name, PL.on_hand, PL.plant_id
from plants PL
order by PL.common_name;

/*
task2
*/
select OH.order_date as 'Order Date',
OH.cust_id as 'CustomerID'
from order_headers OH
order by OH.order_date desc;

/*
task3
*/
select distinct PL.common_name as 'Name'
from plants PL;

/*
task4
*/
select OH.order_id as 'OrderID',
OD.price_per as 'Prices'
from order_headers OH
join order_details OD using (order_id)
order by OH.order_id, OD.price_per;

/*
task5
*/
select PL.plant_id,
Ptax.family, Ptax.genus, Ptax.species
from plants PL
left join plant_taxonomy Ptax using (plant_id)
order by PL.plant_id;

/*
task6
*/
select CU.cust_name_first as 'First Name',
CU.cust_name_last as 'Last Name',
CU.cust_state as 'State'
from customers CU;
