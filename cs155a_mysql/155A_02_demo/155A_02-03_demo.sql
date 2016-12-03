use a_testbed;

/*  demo 01  */
select z_name
 , z_cost
from zoo_2015 ;

/*  demo 02  */
select z_name
 , z_cost "Price more than 3K"
 , z_type
from zoo_2015
where z_cost > 3000 ;

/*  demo 03  */
select z_dob
 , z_type
 , z_name
from zoo_2015
where z_type = 'Armadillo';

/*  demo 04  */
select z_name
 , z_cost "Price more than 20K"
 , z_type
from zoo_2015
where z_cost > 20000 ;