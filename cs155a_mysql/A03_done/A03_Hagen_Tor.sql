/* Tor Hagen */

\W    /* enable warnings! */

use a_vets;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select distinct an_id
from vt_exam_headers;

/*  TASK 02 */
select distinct concat(cl_postal_code, ': ', cl_city, ' ',  cl_state) as "Location"
from vt_clients;

/*  TASK 03 */
select cl_id, an_id
from vt_animals
where an_name is null;

/*  TASK 04 */
select srv_id as 'Service ID', srv_type as 'Service Type',
srv_list_price as 'Curr Price', srv_list_price * 0.1 as 'Tax Amnt'
from vt_services
where srv_type not in ("office visit")
order by srv_id;

/*  TASK 05 */
select ex_id, srv_id, ex_fee
from vt_exam_details
where ex_fee between 15.00 and 22.50
order by srv_id;

/*  TASK 06 */
select cl_id, an_id, an_name
from vt_animals
where an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by cl_id, an_id;

/*  TASK 07 */
select distinct cl_id, an_type
from vt_animals
where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
order by cl_id;

/*  TASK 08 */
select cl_id, an_id, an_name, an_dob
from a_vets.vt_animals
where an_type not in ('hamster', 'capybara', 'porcupine', 'dormouse', 'snake', 'chelonian', 'crocodilian', 'lizard')
order by an_dob desc;

/*  TASK 09 */


/*  TASK 10 */
