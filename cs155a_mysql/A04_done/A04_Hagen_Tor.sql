/* Tor Hagen */

\W    /* enable warnings! */

use a_vets;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select distinct cl.cl_id, cl.cl_name_last, an.an_type
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
where an.an_dob <= '2009-12-31';

/*  TASK 02 */
select de.ex_id, he.ex_date, de.srv_id, de.ex_fee
from a_vets.vt_exam_details de
inner join a_vets.vt_exam_headers he using (ex_id)
inner join a_vets.vt_animals an using (an_id)
where an.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by de.ex_id, de.srv_id;

/*  TASK 03 */
select he.stf_id, concat(st.stf_name_first, ' ', st.stf_name_last) as "staff", he.ex_date
from a_vets.vt_exam_headers he
inner join a_vets.vt_staff st using (stf_id)
inner join a_vets.vt_animals an using (an_id)
where an.an_type not in ('snake', 'chelonian', 'crocodilian', 'lizard')
order by he.ex_date;

/*  TASK 04 */
select an.cl_id, he.ex_id, he.stf_id, de.srv_id, se.srv_desc, se.srv_list_price, de.ex_fee
from a_vets.vt_animals an
inner join a_vets.vt_exam_headers he using (an_id)
inner join a_vets.vt_exam_details de using (ex_id)
inner join a_vets.vt_services se using (srv_id)
where de.ex_fee < se.srv_list_price / 2
order by he.stf_id, he.ex_id, de.srv_id;

/*  TASK 05 */
select de.ex_id, de.ex_fee, de.ex_desc, se.srv_desc, he.an_id
from a_vets.vt_exam_details de
inner join a_vets.vt_services se using (srv_id)
inner join a_vets.vt_exam_headers he using (ex_id)
where de.ex_fee between 50.00 and 100.00
order by se.srv_id, de.ex_fee;

/*  TASK 06 */
select distinct cl.cl_id, cl.cl_name_last
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
where an.an_type = 'cat'
order by cl.cl_id;

/*  TASK 07 */
select distinct cl.cl_id, cl.cl_name_last
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
where an.an_type != 'cat'
order by cl.cl_id;

/*  TASK 08 */
select distinct cl.cl_id, cl.cl_name_last
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
where an.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by cl.cl_id;

/*  TASK 09 */
select distinct cl.cl_id, cl.cl_name_last
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
where an.an_type not in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by cl.cl_id;

/*  TASK 10 */
