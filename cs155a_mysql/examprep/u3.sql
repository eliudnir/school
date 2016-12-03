/*
task1
*/
select PL.plant_id
from plants PL
where PL.plant_id in (
	select distinct OD.plant_id
  from order_details OD
);

/*
task2
*/
select PL.plant_id,
PL.common_name
from plants PL
where PL.plant_id not in (
	select distinct PT.plant_id
  from plant_taxonomy PT
);

/*
task3
*/
select CU.cust_id, CU.cust_name_last, OH.order_date, OH.order_id, OD.plant_id
from customers CU
join order_headers OH using (cust_id)
join order_details OD using (order_id)
where OD.plant_id not in (
	select PT.plant_id
  from plant_taxonomy PT
);

/*
something
*/
select OH.order_date, OH.order_id, OD.plant_id, OD.quantity, OD.price_per,
OD.quantity * OD.price_per as 'ExtCost',
round(((OD.quantity * OD.price_per) * 0.1) + (OD.quantity * OD.price_per), 2) as 'ExtCost + 10%'
from order_headers OH
join order_details OD using (order_id);
