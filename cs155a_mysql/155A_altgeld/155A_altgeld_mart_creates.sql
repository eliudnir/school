-- demo tables for cs 155A create tables
delimiter ;

use a_emp;
-- remove any prior version of tables

drop table if exists a_oe.order_details;
drop table if exists a_oe.order_headers;
drop table if exists a_oe.shipping_modes;
drop table if exists a_oe.customers;
drop table if exists a_oe.credit_ratings;

drop table if exists a_prd.inventory;
drop table if exists a_prd.warehouses;
drop table if exists a_prd.products;
drop table if exists a_prd.categories;

drop table if exists a_emp.employees;
drop table if exists a_emp.jobs;
drop table if exists a_emp.departments;
drop table if exists a_emp.locations;

use a_emp;

create table a_emp.locations(
    loc_id              int unsigned not null  
  , loc_postal_code     varchar(12)  not null
  , loc_street_address  varchar(25)  not null
  , loc_city            varchar(25)  not null
  , loc_state_province  varchar(25)  not null
  , loc_country_id      char(2)      not null
  , loc_type            varchar(25)  null
  , constraint loc_pk   primary key(loc_id)
  , constraint loc_id_range check(loc_id >= 1000)
)engine = INNODB;


create table a_emp.departments(
    dept_id             int unsigned not null   
  , dept_name           varchar(50)  not null
  , loc_id              int unsigned null 
  , constraint dept_pk              primary key (dept_id)
  , constraint dept_loc_fk          foreign key (loc_id) 
        references  a_emp.locations(loc_id)
)engine = INNODB;


create table a_emp.jobs(
    job_id              int unsigned not null   
  , job_title           varchar(50)  not null
  , min_salary          numeric (8,2)   null
  , max_salary          numeric (8,2)   null
  , constraint jobs_pk  primary key(job_id)
  , constraint job_id_range check(job_id > 0)
)engine = INNODB;



create table a_emp.employees(
    emp_id              int unsigned    not null 
  , name_last           varchar(25)     not null
  , name_first          varchar(25)     null
  , ssn                 char(9)         not null
  , emp_mng             int unsigned    null 
  , dept_id             int unsigned    not null 
  , hire_date           date            not null
  , salary              numeric(8, 2) unsigned  null
  , job_id              int unsigned    not null 
  , constraint emp_pk               primary key(emp_id)
  , constraint dept_emp_fk          foreign key (dept_id) 
        references a_emp.departments(dept_id)
  , constraint mng_emp_fk           foreign key (emp_mng) 
        references a_emp.employees(emp_id)
  , constraint job_emp_fk           foreign key (job_id)  
        references a_emp.jobs(job_id)
  , constraint ssn_un               unique (ssn)
  , constraint emp_id_range check (emp_id >= 100)
)engine = INNODB;


-- Products 


use a_prd;

create table a_prd.categories(
    catg_id             varchar(6)      not null  
  , catg_desc           varchar(25)     not null 
  , constraint catg_pk  primary key(catg_id) 
  , constraint catg_dec_un unique(catg_desc)
  )engine = INNODB;


create table a_prd.products(
    prod_id             int unsigned   not null                 
  , prod_name           varchar(25)    not null
  , prod_desc           varchar(50)    null
  , prod_list_price     numeric(6,2) unsigned  not null
  , catg_id             varchar(6)     not null
  , constraint prod_pk             primary key(prod_id)
  , constraint prod_catg_fk        foreign key (catg_id) 
        references a_prd.categories(catg_id)
  , constraint prod_id_range check (prod_id >= 100)
 )engine = INNODB;


create table a_prd.warehouses(
    warehouse_id        int unsigned not null   
  , loc_id              int unsigned not null 
  , constraint wrhs_pk             primary key(warehouse_id)
  , constraint wrhs_loc_fk         foreign key(loc_id )
        references a_emp.locations(loc_id)
  ,	constraint warehouse_id_range check (warehouse_id > 10)
 )engine = INNODB;


create table a_prd.inventory(
    prod_id              int unsigned not null 
  , warehouse_id         int unsigned not null 
  , quantity_on_hand     int unsigned  not null
  , constraint invent_pk           primary key( prod_id, warehouse_id) 
  , constraint inv_wrhs_fk         foreign key (warehouse_id) 
        references a_prd.warehouses(warehouse_id)
  , constraint inv_prod_fk        foreign key (prod_id) 
        references a_prd.products(prod_id)
)engine = INNODB;


--  OrderEntry 
Use a_oe;
create table a_oe.credit_ratings ( 
    low_limit            int unsigned not null unique
  , high_limit           int unsigned not null unique
  , rating               varchar(15)  not null unique
  , constraint high_limit_range check (high_limit >=low_limit)
 )engine = INNODB;


create table a_oe.customers(
    cust_id              int unsigned    not null  
  , cust_name_last       varchar(25)     not null
  , cust_name_first      varchar(25)     null
  , credit_limit         int unsigned    null
  , constraint cust_pk              primary key(cust_id)
  , constraint cust_id_range check (cust_id >= 100000)
)engine = INNODB;


create table a_oe.shipping_modes (
    shipping_mode_id     char(6)     not null 
  , shipping_mode_desc   varchar(25) not null unique
  , constraint shp_mode_pk         primary key(shipping_mode_id)
  , constraint shp_desc_un unique (shipping_mode_desc)
)engine = INNODB;


create table a_oe.order_headers(
    ord_id               int unsigned  not null               
  , ord_date             datetime      not null
  , cust_id              int unsigned    not null 
  , ord_mode             varchar(25)   not null
  , shipping_mode        char(6)       null
  , ord_status           int unsigned  not null 
  , sales_rep_id         int unsigned  null 
  , constraint ord_pk              primary key(ord_id)
  , constraint shp_mode_fk         foreign key (shipping_mode) 
        references a_oe.shipping_modes(shipping_mode_id)
  , constraint ord_cust_fk         foreign key (cust_id) 
        references a_oe.customers(cust_id)
  , constraint ord_sales_rep_fk    foreign key (sales_rep_id) 
        references a_emp.employees(emp_id)
  , constraint ord_status_ck       check (ord_status between 1 and 9)
  , constraint ord_mode_ck         check (ord_mode in ('PHONE','ONLINE','DIRECT'))
  , constraint ord_id_range check(ord_id > 0)
)engine = INNODB;


create table a_oe.order_details(
    ord_id               int unsigned  not null 
  , line_item_id         int unsigned  not null 
  , prod_id              int unsigned  not null 
  , quoted_price         numeric (6,2) unsigned not null 
  , quantity_ordered     int unsigned  not null
  , constraint ord_details_pk      primary key(ord_id, line_item_id)
  , constraint ord_ord_fk          foreign key (ord_id) 
        references a_oe.order_headers(ord_id)
  , constraint ord_prod_fk        foreign key (prod_id) 
        references a_prd.products(prod_id)
  , constraint line_item_id_range check (line_item_id >0)
)engine = INNODB;



