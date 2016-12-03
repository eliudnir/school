/* Tor Hagen */

\W    /* enable warnings! */

use a_plants;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select PL.plant_id, PL.common_name, PL.on_hand, PL.list_price,
round(PL.on_hand * PL.list_price, -2) as InventoryCost
from a_plants.plants PL
where PL.discontinued_date is not null
and PL.on_hand > 0;

/*  TASK 02 */
set @tax_rate := 0.06;
select OD.order_id, OD.plant_id, OD.price_per, OD.quantity,
OD.price_per * OD.quantity as "extended cost",
truncate(ceiling((OD.price_per * OD.quantity)*100)/100 * @tax_rate, 2) as "tax amount"
from a_plants.order_details OD;

/*  TASK 03 */
set @state_abbreviations := 'IL,IN,IA,KS,MI,MN,MO,NE,ND,OH,SD,WI';
select OH.cust_id, CU.cust_name_last, OH.order_date
from a_plants.order_headers OH
join a_plants.customers CU using (cust_id)
where find_in_set(CU.cust_state, @state_abbreviations) = 0;

/*  TASK 04 */
set @random_price := floor(rand() * 41) + 10;
select @random_price;
select PL.plant_id, PL.list_price
from a_plants.plants PL
where PL.list_price < @random_price;

/*  TASK 05 */
select distinct PL.plant_id, PL.common_name,
  case
    when length(concat(PT.genus, PT.species)) > 0 then concat_ws(" ", PT.genus, PT.species)
  else null
  end as Scientific_Name
from a_plants.order_headers OH
join a_plants.order_details OD using (order_id)
join a_plants.plants PL using (plant_id)
left join a_plants.plant_taxonomy PT using (plant_id)
where substring_index(OH.order_date, "-", 2) in ('2015-01', '2015-02');

/*  TASK 06 */
select distinct all_orders.plant_id, plant_names.common_name, plant_names.Scientific_name
from (
  select OD.plant_id
    from a_plants.order_details OD
    join a_plants.order_headers OH using (order_id)
) all_orders
left join (
  select OD.plant_id
    from a_plants.order_details OD
    join a_plants.order_headers OH using (order_id)
    where substring_index(OH.order_date, "-", 2) in ('2013-07', '2013-08')
) plant_filter on all_orders.plant_id = plant_filter.plant_id
join (
  select PL.plant_id, PL.common_name,
    case
      when length(concat(PT.genus, PT.species)) > 0 then concat_ws(" ", PT.genus, PT.species)
    else null
        end as Scientific_Name
    from a_plants.plants PL
    left join a_plants.plant_taxonomy PT using (plant_id)
) plant_names on all_orders.plant_id = plant_names.plant_id
where plant_filter.plant_id is null;

/*  TASK 07 */


/*  TASK 08 */


/*  TASK 09 */


/*  TASK 10 */
