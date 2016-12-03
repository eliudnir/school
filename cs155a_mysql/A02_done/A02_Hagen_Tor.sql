/* Tor Hagen */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select an_type, an_name, an_id
from vt_animals
order by an_name;

/*  TASK 02 */
select ex_date as 'Exam Date', an_id as 'Animal ID'
from vt_exam_headers
order by ex_date desc;

/*  TASK 03 */
select distinct an_type
from vt_animals;

/*  TASK 04 */
select ex_id, ex_fee
from vt_exam_details
order by ex_id, ex_fee;

/*  TASK 05 */
select srv_type, srv_desc
from vt_services
order by srv_type, srv_list_price;

/*  TASK 06 */
select distinct cl_state, cl_city
from vt_clients
order by cl_state, cl_city;

/*  TASK 07 */
select stf_job_title as 'Job Desc',
stf_name_first as 'First Name',
stf_name_last as 'Last Name'
from vt_staff
order by stf_name_last, stf_name_first;

/*  TASK 08 */
select stf_id, an_id, ex_date
from vt_exam_headers
order by stf_id, ex_date desc;

/*  TASK 09 */


/*  TASK 10 */
