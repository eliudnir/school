use  a_plants;

drop table if exists a_plants.order_details;
drop table if exists a_plants.order_headers;
drop table if exists a_plants.customers;

drop table if exists a_plants.plant_vendors; 
drop table if exists a_plants.vendors; 
	
drop table if exists a_plants.plant_taxonomy;
drop table if exists a_plants.plants;


  
CREATE TABLE a_plants.plants(
  plant_id              int            NOT NULL
, common_name           varchar (30)   NOT NULL
, on_hand               int            NULL
, list_price            decimal(6, 2)  NOT NULL
, acquired_date         date           NOT NULL
, discontinued_date     date           NULL
, constraint plants_pk primary key (plant_id)
, constraint plant_id_range check(plant_id >= 100)
, constraint on_hand_range check(on_hand >= 0)
, constraint date_consistency check(discontinued_date>= acquired_date)
, constraint price_range check(list_price >= 0)
)engine = INNODB;
 
CREATE TABLE a_plants.plant_taxonomy(
  plant_id              int            NOT NULL 
, family                varchar (30)   NOT NULL
, genus                 varchar (30)   NOT NULL 
, species               varchar (30)   NOT NULL 
, constraint plant_tax_pk primary key (plant_id)
, constraint plantTax_fk  foreign key (plant_id)
     references a_plants.plants (plant_id)
, constraint plantTax_un  unique (genus, species)
)engine = INNODB;  
  
  
CREATE TABLE a_plants.vendors (
  vendor_id               int          not null
, vendor_name             varchar (25) not null
, vendor_state            char(2)      not null
, vendor_account_opened   date         not null
, vendor_account_closed   date         null
, constraint vendors_pk   primary key (vendor_id)
, constraint vendor_id_range check (vendor_id >0)
)engine = INNODB;
 
 
 
CREATE TABLE a_plants.plant_vendors(
  plant_id                int        not null
, vendor_id               int        not null
, constraint plant_vendors_pk primary key (plant_id, vendor_id)
, constraint vendor_fk foreign key (vendor_id)
             references a_plants.vendors (vendor_id) 
, constraint plant_fk foreign key (plant_id)
             references a_plants.plants (plant_id) 
)engine = INNODB;
 
CREATE TABLE a_plants.customers (
  cust_id             int              NOT NULL
, cust_name_last      varchar (25)     NULL
, cust_name_first     varchar (25)     NULL
, cust_state          char (2)         NOT NULL
, constraint customers_pk  primary key (cust_id)
, constraint cust_id_range check(cust_id >= 100)
);
 
 
CREATE TABLE a_plants.order_headers(
  order_id              int            NOT NULL
, cust_id               int            NOT NULL
, order_date            date           NULL
, constraint OH_pk primary key (order_id)
, constraint order_id_range check(order_id >= 100)
, constraint cust_fk foreign key (cust_id) 
     references a_plants.customers (cust_id)
)engine = INNODB;

 
CREATE TABLE a_plants.order_details(
  order_id              int            NOT NULL
, plant_id              int            NOT NULL
, quantity              int            NULL
, price_per             numeric(6,2)     NULL
, constraint OD_pk  primary key  (order_id, plant_id)
, constraint order_fk foreign key (order_id) 
     references a_plants.order_headers (order_id)
, constraint plantorder_fk foreign key (plant_id) 
     references  a_plants.plants (plant_id)
, constraint quantity_range check(quantity >= 1)
, constraint price_per_range check(price_per >= 0)	 
)engine = INNODB;

