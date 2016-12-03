--  tables for cs 155A vets create tables
delimiter ;
-- Switch to the correct database
use a_vets;

-- remove any prior version of tables
drop table if exists a_vets.vt_exam_details;
drop table if exists a_vets.vt_exam_headers;
drop table if exists a_vets.vt_animals;
drop table if exists a_vets.vt_clients;
drop table if exists a_vets.vt_animal_types;
drop table if exists a_vets.vt_services;
drop table if exists a_vets.vt_staff_pay;
drop table if exists a_vets.vt_staff;

-- MySQL will not enforce the check constraints
-- they are included here to indicate what the values should be

create table a_vets.vt_staff (
    stf_id          int  unsigned    not null
  , stf_name_last   varchar(25)      not null
  , stf_name_first  varchar(25)      not null
  , stf_job_title   varchar(25)      not null
  , constraint vt_staff_pk           primary key (stf_id) 
  , constraint stf_id_range          check (stf_id > 0)
  , constraint job_title_values      check 
       ( stf_job_title in ('vet', 'vet assnt', 'clerical', 'kennel'))
)engine = INNODB;

create table a_vets.vt_staff_pay (
    stf_id          int  unsigned    not null
  , stf_ssn         char(9)          not null  
  , stf_salary      numeric(8,2) unsigned not null 
  , stf_hire_date   date             not null
  , constraint vt_staff_pay_pk       primary key(stf_id)
  , constraint stf_hire_date_range   check (stf_hire_date >= date '1995-01-01')
  , constraint vt_staff_pay_staff_fk foreign key(stf_id) references a_vets.vt_staff(stf_id)
  , constraint stf_salary_range      check (stf_salary >= 0)
  , constraint stf_id2_range         check (stf_id > 0)
  , constraint stf_ssn_un            unique (stf_ssn)
)engine = INNODB;


create table a_vets.vt_services(
    srv_id          int  unsigned    not null  
  , srv_list_price  numeric(6,2) unsigned  not null 
  , srv_desc        varchar(50)      not null unique
  , srv_type        varchar(25)      not null
  , constraint vt_services_pk        primary key (srv_id) 
  , constraint srv_type_ck           check (srv_type in
       ('office visit', 'consult', 'medicine', 'treatment'))
)engine = INNODB;


create table a_vets.vt_animal_types(
    an_type         varchar(25)      not null  
  , constraint an_types_pk           primary key (an_type) 
)engine = INNODB;


create table a_vets.vt_clients(
    cl_id           int  unsigned    not null  
  , cl_name_last    varchar(25)      not null
  , cl_name_first   varchar(25)      null
  , cl_address      varchar(25)      not null
  , cl_city         varchar(25)      not null
  , cl_state        char(2)          not null
  , cl_postal_code  varchar(12)      not null
  , cl_phone        varchar(12)      not null
  , constraint vt_clients_pk         primary key (cl_id) 
  , constraint cl_id_range           check (cl_id > 0)
)engine = INNODB;

create table a_vets.vt_animals(
    an_id           int  unsigned    not null 
  , an_type         varchar(25)      not null  
  , an_name         varchar(25)      null
  , an_dob          date             not null
  , cl_id           int  unsigned    not null  
  , constraint vt_animals_pk         primary key (an_id) 
  , constraint vt_animals_animal_types_fk foreign key (an_type) references a_vets.vt_animal_types (an_type)
  , constraint vt_animals_clients_fk      foreign key (cl_id)   references a_vets.vt_clients (cl_id)
  , constraint an_id_range           check (an_id > 0)
  )engine = INNODB;


create table a_vets.vt_exam_headers(
    ex_id           int  unsigned    not null 
  , an_id           int  unsigned    not null 
  , stf_id          int  unsigned    not null 
  , ex_date         datetime         not null
  , constraint vt_exam_headers_pk    primary key (ex_id) 
  , constraint vt_exam_headers_animals_fk  foreign key (an_id)   references a_vets.vt_animals (an_id)
  , constraint vt_exam_headers_staff_fk    foreign key (stf_id)  references a_vets.vt_staff (stf_id)
  , constraint exam_id_range         check (ex_id > 0)
  , constraint exam_date_range       check (ex_date >= date '1995-01-01')
  )engine = INNODB;


create table a_vets.vt_exam_details(
    ex_id           int  unsigned    not null 
  , line_item       int  unsigned    not null   
  , srv_id          int  unsigned    not null  
  , ex_fee          numeric(6,2) unsigned not null
  , ex_desc         varchar(50)      not null
  , constraint evt_exam_details_pk   primary key (ex_id, line_item ) 
  , constraint evt_exam_details_headers_fk  foreign key (ex_id)  references a_vets.vt_exam_headers (ex_id)
  , constraint evt_exam_details_services_fk foreign key (srv_id) references a_vets.vt_services (srv_id)
  , constraint line_item_range       check (line_item > 0)
  , constraint ex_fee_range          check (ex_fee  >= 0)
)engine = INNODB;





