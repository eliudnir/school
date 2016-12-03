Use a_testbed;

/* demo 01 */
Select
  z_id
, z_name
, z_type
, z_cost
, z_dob
, z_acquired
From a_testbed.zoo_2015;

/* demo 02 */
Select
  z_id
, z_name
, z_type
, z_cost
From a_testbed.zoo_2015
Where z_type = 'Armadillo';

/* demo 03 */
Select
  z_id
, z_name
, z_type
, z_cost
From a_testbed.zoo_2015
Where z_cost = 5000;

/* demo 04 */
Select
  z_id
, z_name
, z_type
, z_cost
From a_testbed.zoo_2015
Where z_type = 'Unicorn';

/* demo 05 */
Insert Into zoo_2015  (
  z_id
, z_name
, z_type
, z_cost
, z_dob
, z_acquired
) values 
(
  257
, 'Arnold'
, 'Giraffe'
, 5000.00
, '2014-05-15'
, '2014-05-15'
);

Insert Into zoo_2015  (
  z_id
, z_type
, z_cost
, z_dob
, z_acquired
) values 
(
  258
, 'Giraffe'
, 5000.00
, '2013-05-15'
, '2013-05-15'
       );

Insert Into zoo_2015 values 
(
  259
, null
, 'Giraffe'
, 5000.00
, '2002-05-15 10:45:00'
, '2002-05-15'
       );
	   

Insert Into zoo_2015 values 
(  260, 'Artemis',  'Giraffe', 1500.00, '2013-06-06 10:45:00','2013-08-15' )
,
(  261, 'Diana', 'Giraffe', 120.95, '2000-06-06 10:47:00','2015-01-15' )
;


select * 
from zoo_2015
where z_type = 'giraffe';
