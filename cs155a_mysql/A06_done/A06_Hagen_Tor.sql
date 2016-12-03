/* Tor Hagen */

\W    /* enable warnings! */

use a_vets;

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select CL.cl_id, CL.cl_name_last
from a_vets.vt_clients CL
where CL.cl_id not in (
  select AN.cl_id
  from a_vets.vt_animals AN
);

/*  TASK 02 */
select CL.cl_id, CL.cl_name_last
from a_vets.vt_clients CL
where CL.cl_id in (
  select AN.cl_id
  from a_vets.vt_animals AN
);

/*  TASK 03 */
select CL.cl_id, CL.cl_name_last
from a_vets.vt_clients CL
where CL.cl_id in (
  select AN.cl_id
  from a_vets.vt_animals AN
  where an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
);

/*  TASK 04 */
select CL.cl_id, CL.cl_name_last
from a_vets.vt_clients CL
where CL.cl_id in (
  select AN.cl_id
  from a_vets.vt_animals AN
  where an_type not in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 05 */
select distinct AN.an_id, AN.an_name
from a_vets.vt_animals AN
join a_vets.vt_exam_headers EH on AN.an_id = EH.an_id
join a_vets.vt_staff ST on EH.stf_id = ST.stf_id
where ST.stf_job_title = 'vet assnt';

/*  TASK 06 */
select CL.cl_id, CL.cl_name_last, AN.an_id, AN.an_name, AN.an_type
from a_vets.vt_clients CL
join a_vets.vt_animals AN on CL.cl_id = AN.cl_id
left join a_vets.vt_exam_headers EH on AN.an_id = EH.an_id
where EH.an_id is null
order by CL.cl_id, AN.an_id;

/*  TASK 07 */
select CL.cl_id, CL.cl_name_last, AN.an_id, AN.an_name, AN.an_type
from a_vets.vt_clients CL
left join a_vets.vt_animals AN on CL.cl_id = AN.cl_id
left join a_vets.vt_exam_headers EH on AN.an_id = EH.an_id
where EH.an_id is null
order by CL.cl_id, AN.an_id;

/*  TASK 08 */
select distinct t_cust.cl_id, t_cust.cl_name_last
from ( select cl_id, cl_name_last
  from a_vets.vt_clients
) t_cust
join ( select cl_id, an_type
    from a_vets.vt_animals
    where an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
) t_an1 on t_cust.cl_id = t_an1.cl_id
join ( select cl_id, an_type
    from a_vets.vt_animals
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
) t_an2 on t_cust.cl_id = t_an2.cl_id;

/*  TASK 09 */


/*  TASK 10 */
