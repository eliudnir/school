/* Tor Hagen */

\W    /* enable warnings! */

use a_vets;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select st.stf_job_title, st.stf_name_last
from a_vets.vt_staff st
inner join a_vets.vt_staff_pay sp using (stf_id)
where sp.stf_salary > 30000;

select stf_job_title, stf_name_last
from a_vets.vt_staff st
where stf_id in (
  select stf_id
  from a_vets.vt_staff_pay sp
  where stf_salary > 30000
);

/*  TASK 02 */
select cl_id, an_id, an_name, an_dob
from a_vets.vt_animals an
where cl_id in (
  select cl_id
  from a_vets.vt_clients cl
  where cl_city in ('New York', 'Massachusetts')
)
and an_type not in ('dog', 'cat', 'bird');

/*  TASK 03 */
set @some_int = 50;
select ed.srv_id, ed.ex_fee, ed.ex_id, eh.ex_date
from a_vets.vt_exam_details ed
inner join a_vets.vt_exam_headers eh using (ex_id)
where ed.ex_fee > @some_int;

set @some_int = 150;
select ed.srv_id, ed.ex_fee, ed.ex_id, eh.ex_date
from a_vets.vt_exam_details ed
inner join a_vets.vt_exam_headers eh using (ex_id)
where ed.ex_fee > @some_int;

/*  TASK 04 */
set @animal_id = 15001;
select cl.cl_id, cl.cl_name_last, an.an_type, ed.srv_id, se.srv_desc, ed.ex_fee
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
inner join a_vets.vt_exam_headers eh using (an_id)
inner join a_vets.vt_exam_details ed using (ex_id)
inner join a_vets.vt_services se using (srv_id)
where an.an_id = @animal_id;

set @animal_id = 16004;
select cl.cl_id, cl.cl_name_last, an.an_type, ed.srv_id, se.srv_desc, ed.ex_fee
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
inner join a_vets.vt_exam_headers eh using (an_id)
inner join a_vets.vt_exam_details ed using (ex_id)
inner join a_vets.vt_services se using (srv_id)
where an.an_id = @animal_id;

set @animal_id = 15401;
select cl.cl_id, cl.cl_name_last, an.an_type, ed.srv_id, se.srv_desc, ed.ex_fee
from a_vets.vt_clients cl
inner join a_vets.vt_animals an using (cl_id)
inner join a_vets.vt_exam_headers eh using (an_id)
inner join a_vets.vt_exam_details ed using (ex_id)
inner join a_vets.vt_services se using (srv_id)
where an.an_id = @animal_id;

/*  TASK 05 */
select *
from a_vets.vt_services
where srv_desc like '%feline%'
and srv_desc not like '%dental%'
order by srv_type, srv_id;

/*  TASK 06 */
select cl_id, cl_name_last
from a_vets.vt_clients
where cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 07 */
select cl_id, cl_name_last
from a_vets.vt_clients
where cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('bird')
)
and cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 08 */
select cl_id, cl_name_last
from a_vets.vt_clients
where cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('bird')
)
and cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type not in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 09 */
select cl_id, cl_name_last
from a_vets.vt_clients
where cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('dog')
)
and cl_id in (
  select cl_id
  from a_vets.vt_animals
  where an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
);

/*  TASK 10 */
