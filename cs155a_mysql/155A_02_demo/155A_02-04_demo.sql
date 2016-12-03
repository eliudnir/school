use a_testbed;
/*   demo 01  */
Select  z_type
From zoo_2015;

/*   demo 02  */
Select DISTINCT z_type
From zoo_2015;


/*   demo 03  */
Select  DISTINCT z_type, z_cost
From zoo_2015
Order by z_type, z_cost;


/*   demo 04  */
Select  Distinct z_type
From zoo_2015
Order by z_type;


/*   demo 05  */
Select  distinct z_type
From zoo_2015
Order by z_name;


/*   demo 06  */
Select z_type, z_cost
From zoo_2015
LIMIT 5;


/*   demo 07  */
Select z_id,  z_type, z_cost
From zoo_2015
Order by z_cost
LIMIT 2;


/*   demo 08  */
Select z_id, z_type, z_cost
From zoo_2015
Order by z_cost
LIMIT 5, 10;

/*   demo 09  */
Select z_id,  z_type, z_cost
From zoo_2015
Order by z_cost desc
LIMIT 5,200;

/*   demo 10  */
Select z_id,  z_type, z_cost
From zoo_2015
Order by z_cost desc
LIMIT 0, 5;



