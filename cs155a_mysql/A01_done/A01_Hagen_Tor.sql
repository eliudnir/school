/* Tor Hagen */

\W    /* enable warnings! */

use   a_testbed;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
delete from a_testbed.zoo_2015
where z_id > 100;

select * from a_testbed.zoo_2015;

/*  TASK 02 */
insert into a_testbed.zoo_2015
values
(555, 'Snickerfant', 'Dromedary', 8000.00, '2003-08-01 08:45:00', '2003-08-01'),
(556, 'Taliskafant', 'Owl', 1200.00, '1999-09-09 09:00:00', '2010-10-09'),
(557, 'Tokifant', 'Crab', 3000.00, '2011-05-06 06:30:00', '2011-05-06');

/*  TASK 03 */
Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values (103, 'Artem', 'Tiger', 6000.00, '2010-01-01', '2010-01-01');
Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values (101, 'Leo', 'Leopard', 5000.00, '2010-10-20', '2010-10-20');
Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values (102, 'Erica', 'Elephant', 10000.00, '2005-03-01', '2015-03-01');
Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values ( 105, 'John', 'Elephant', 1000.00, '2010-05-14 9:12:04', '2014-05-14' );
Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values ( 110, 'Sarah', 'Penguin', 1500.00, '2013-01-24 7:34:34', '2013-06-04' );
Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values ( 115, 'Oliver', 'Cheetah', 1534.00, '2007-12-06 1:14:04', '2015-01-14' );

/*  TASK 04 */
select z_name, z_type, z_id, z_cost, z_dob, z_acquired
from a_testbed.zoo_2015;

/*  TASK 05 */
select z_type, z_name, z_cost
from a_testbed.zoo_2015
order by z_type, z_name;

/*  TASK 06 */
select z_id, z_name, z_dob
from a_testbed.zoo_2015
where z_type = 'Zebra';

/*  TASK 07 */
show tables;

/*  TASK 08 */
desc zoo_2015;

/*  TASK 09 */
show variables like 'char%';

/*  TASK 10 */
