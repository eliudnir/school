-- demo tables for cs 155A populate tables
delimiter ;
use a_emp;
 --  clean up previous table contents -------------------------------------------
SET foreign_key_checks = 0;
delete from  a_oe.order_details;
delete from  a_oe.order_headers;
delete from  a_oe.shipping_modes;
delete from  a_oe.customers;
delete from  a_oe.credit_ratings;

delete from  a_prd.inventory;
delete from  a_prd.warehouses;
delete from  a_prd.products;
delete from  a_prd.categories;

delete from  a_emp.employees;
delete from  a_emp.jobs;
delete from  a_emp.departments;
delete from  a_emp.locations;
SET foreign_key_checks = 1;

-- Locations


insert into a_emp.locations(loc_id, loc_street_address, loc_postal_code, loc_city, loc_state_province, loc_country_id, loc_type )
values 
  (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US', 'warehouse'  )
, (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US' , 'warehouse' )
, (1560, '50 Pacific Ave', '94112', 'San Francisco', 'California', 'US' , 'office')
, (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA', 'office' )
, (2700,  'Schwanthalerstr. 7031','80925', 'Munich', 'Bavaria', 'DE', null )
, (3200,  'Mariano Escobedo 9991', '11932','Mexico City', 'Distrito Federal', 'MX', 'office')
;

-- Departments
insert into a_emp.departments(dept_id, dept_name, loc_id)
values 
  ( 10, 'Administration',  1560 )
, ( 20, 'Marketing',  1400 )
, ( 30, 'Development',  1500)
, ( 35, 'Cloud Computing', null)
, (210, 'IT Support',  1800)
, (215, 'IT Support',  2700)
, ( 80, 'Sales',  1400 )
, ( 90, 'Shipping', null)
, ( 95, 'Logistics', null)
;

-- Jobs
insert into a_emp.jobs(job_id, job_title, min_salary, max_salary)     
values 
  (1,   'President',      100000, 100000)
, (2,   'Marketing',       5000,  75000)
, (4,   'Sales Manager',  15000,  60000)
, (8,   'Sales Rep',      10000,  30000)
, (16,  'Programmer',     60000, 120000)
, (32,  'Code Debugger',  60000, null)
, (64,  'DBA',            60000, null)
, (128, 'RD',             60000, null)
;

-- Employees
insert into a_emp.employees(emp_id, name_first, name_last,  ssn, emp_mng, dept_id, hire_date, salary, job_id)          
values 
  (100, 'Steven',  'King',   '123456789', null,  10, '1989-06-17', 100000, 001)
, (201, 'Daniel',  'Harts',  '789012345', 100,   20, '2004-08-25', 15000, 002)
, (101, 'Karen',   'Koch',   '112345678', 100,   30, '2008-06-17', 98005, 016)
, (102, 'Helen',   'D''Haa', '187008412', 100,  215, '2010-06-12', 60300, 064)
, (145, 'Oliver',  'Russ',   '125786901', 100,   80, '2008-03-30', 59000, 004)
, (146, 'Rene',    'Partne', '243456543', 100,  215, '2012-02-29', 88954, 064)
, (108, 'Oliver',  'Green',  '119012345', 101,   30, '1995-04-14', 62000, 016)
, (205, 'Pat',     'Higgs',  '258712345', 101,   30, '2008-06-01', 75000, 016)
, (162, 'Stratus', 'Holme',  '128585289', 101,   35, '2011-03-17', 98000, 016)
, (200, 'Cumulus', 'Whale',  '648772345', 101,   35, '2011-06-17', 65000, 016)
, (203, 'Bob',     'Mays',   '145678412', 101,   30, '2010-06-30', 64450, 016)
, (103, 'Maria',   'Hunol',  '154658970', 102,  210, '2010-08-01', 69000, 064)
, (104, 'Oliver',  'Ernst',  '125876901', 103,  210, '2012-01-25', 65000, 032)
, (150, 'Harold',  'Tuck',   '125689901', 145,   80, '2001-10-28', 20000, 008)
, (155, 'Helen',   'Hiller', '120845901', 145,   80, '2004-03-05', 29000, 008)
, (207, 'Russel',  'Russ',   '115487758', 145,   35, '2011-06-17', 30000, 008)
, (109, 'Robert',  'Fiet',   '854567415', 108,   30, '2012-02-29', 65000, 032)
, (160, 'Robert',  'Dorna',  '354567415', 146,  215, '2011-06-15', 65000, 032)
, (161, 'Robert',  'Dewal',  '454567415', 146,  215, '2011-06-15', 120000, 016)
, (110, 'Helen',   'Chen',   '217008412', 108,   30, '2012-12-31', 60300, 032)
, (206, 'Rene',    'Geitz',  '541456543', 205,   30, '2013-06-15', 88954, 032)
, (204, 'Robert',  'King',   '554167415', 205,   30, '2013-06-15', 99090, 032)
;



 --  Products
--  categories
insert into a_prd.categories(catg_id,catg_desc) values
  ('APL', 'APPLIANCES')
, ('BK',  'BOOKS')
, ('CEQ', 'COMPUTER EQUIPMENT')
, ('GFD', 'GOURMET FOOD')
, ('HD',  'HARDWARE')
, ('HW',  'HOUSEWARES')
, ('PET', 'PET SUPPLIES')
, ('SPG', 'SPORTING GOODS')
, ('MUS', 'MUSIC')
;


--  warehouses
insert into a_prd.warehouses(warehouse_id, loc_id)  values
  (  100,  1400)
, (  125,  1500)
, (  200,  1800)
, (  250,  1500)
, (  300,  1500)
, (  399,  1400);



-- prd_products
insert into a_prd.products  (prod_id, catg_id, prod_list_price, prod_name, prod_desc) 
values
 (1000, 'HW',   125.00, 'Hand Mixer', 'Seven speed BnD hand mixer, black')
,(1010, 'SPG',  150.00, 'Weights',   'Set of 12 barbells 15 pounds')
,(1020, 'SPG',   12.95, 'Dartboard', 'Cork-backed dartboard with hanger')
,(1030, 'SPG',   29.95, 'Basketball',  'Basketball')
,(1070, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Yellow')
,(1071, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Blue')
,(1072, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Red')
,(1080, 'HW',    25.00, 'Cornpopper', 'Cornpopper 12 quart automatic shutoff')
,(1090, 'HW',   149.99, 'Gas grill', 'Gas grill')
,(1100, 'HW',    49.99, 'Blender', 'Twelve-speed Blender')
,(1140, 'PET',   14.99, 'Bird cage- simple', 'Bird cage- simple; wire frame two feeder trays')
,(1141, 'PET',   99.99, 'Bird cage- deluxe', 'Bird cage- deluxe;floor model, with fly space')
,(1142, 'PET',    2.50, 'Bird seed', 'Bird seed mix with sunflowers')
,(1143, 'PET',    2.50, 'Bird seed deluxe', 'Bird seed mix with more sunflower seeds')
,(1150, 'PET',    4.99, 'Cat exerciser', 'Cat exerciser')
,(1151, 'PET',   14.99, 'Cat pillow', 'Cat pillow, removable cloth cover')
,(1152, 'PET',   55.28, 'Cat pillow Leather', 'Cat pillow, removable leather cover')
,(1040, 'SPG',  349.95, 'Treadmill', 'Super Flyer Treadmill')
,(1050, 'SPG',  269.95, 'Stationary bike', 'Deluxe Stationary bike')
,(1060, 'SPG',  255.95, 'Mountain bike', 'Deluxe Mountain bike')
,(1160, 'HW',   149.99, 'Mixer Deluxe', 'Stand Mixer with attachments')
,(4567, 'PET',  549.99, 'Deluxe Cat Tree', 'Our highest end cat tree- you gotta see this')
,(4568, 'PET',  549.99, 'Deluxe Cat Bed', 'Satin four-poster cat bed')
,(4569, 'APL',  349.95, 'Mini Dryer', 'Sized for the apartment')
,(4575, 'HW',    49.95, 'Electric can opener', 'GE model 34PG98')
,(4576, 'PET',   29.95, 'Cosmo cat nip', 'Primo brand of catnip for your favorite cat')
,(4577, 'PET',   29.95, 'Cat leash', 'Leather cat leash with harness')
,(1110, 'HW',    49.99, 'Pancake griddle', 'Electric Pancake griddle')
,(1120, 'APL',  549.99, 'Washer', 'Full-sized Washer')
,(1125, 'APL',  500.00, 'Dryer', 'Low Energy Dryer')
,(1126, 'APL',  850.00, 'WasherDryer', 'Low Energy washer Dryer combo')
,(1130, 'APL',  149.99, 'Mini Freezer', 'Mini freezer, sized for the office')
,(5000, 'GFD',   12.50, 'Fingerling Potatoes', 'Cello bag of mixed fingerling potatoes')
,(5001, 'GFD',    5.00, 'Ginger Preserve', 'Dundee Ginger Preserve 12 oz jar')
,(5002, 'HD',    23.00, 'Ball-Peen Hammer', '16 oz Jacketed Graphite Ball-peen hammer')
,(5004, 'HD',    15.00, 'Dead Blow Hammer', '10 oz Steel Head Dead Blow hammer')
,(5005, 'HD',    45.00, 'Shingler Hammer', 'Steel Shingler hammerhammer')
,(5008, 'HD',    12.50, 'Claw Framing', '22 oz Graphite checkered face framing hammer')
,(2987,  'MUS',  15.87, 'B000005HGK', 'Stanley Turrentine - Ballads')
,(2487,  'MUS',   9.45, 'B004Y03N7E', 'Stanley Turrentine - Don''t Mess With Mr. T')
,(2947,  'MUS',  12.45, 'B000GFRE76', 'Ornette Coleman - Sound Grammer')
,(2984,  'MUS',  15.87, 'B000000Y7L', 'John Coltrane - Lush Life')
,(2337,  'MUS',  15.87, 'B000005H40', 'John Coltrane - Blue Train')
,(2933,  'MUS',  12.45, 'B0006J2FLW', 'David Newman - I Remember Brother Ray')
,(2412,  'MUS',   9.87, 'B00005UF3I', 'David Newman - Davey Blue')
,(2746,  'MUS',  14.50, 'B00000JWCM', 'Charles Mingus - Blues & Politics')
,(2747,  'MUS',  14.50, 'B000002I4Q', 'Charles Mingus - Blues & Roots')
,(2234,  'MUS',  15.88, 'B000002I7U', 'Charles Mingus - Pithecanthropus Erectus')
,(2014,  'MUS',  15.95, 'B000005INR', 'Bix Beiderbecke - Tiger Rag')
;

--  prd_inventory
insert into a_prd.inventory(prod_id, warehouse_id, quantity_on_hand) 
values 
  (  1000, 100,   80 )
, (  1010, 100,  500 )
, (  1020, 125,  100 )
, (  1020, 200,  156 )
, (  1030, 250,   25 )
, (  1030, 100,  125 )
, (  1040, 250,   35 )
, (  1050, 100,    0 )
, (  1060, 125,    2 )
, (  1070, 100,  250 )
, (  1071, 100, 1000 )
, (  1072, 250,  100 )
, (  1080, 250,  125 )
, (  1090, 250,  100 )
, (  1100, 125,  250 )
, (  1110, 125, 1000 )
, (  1120, 125,  580 )
, (  1130, 125,  250 )
, (  1140, 250,   50 )
, (  1141, 250,   25 )
, (  1150, 100,  300 )
, (  1150, 125,  250 )
, (  1150, 200,  100 )
, (  1125, 200,   10 )
, (  1050, 300,  500 )
, (  1060, 300,  500 )
, (  1040, 300,  400 )
, (  1150, 300,  800 )
, (  5002, 200,  103 )
, (  5004, 200,  150 )
, (  5005, 200,  200 )
, (  5008, 200,   75 )
, (  5002, 125,  780 )
, (  5004, 125,   59 )
, (  5005, 125, 1000 )
, (  5008, 125,   10 );


-- Order_entry

-- shipping_modes 
insert into a_oe.shipping_modes (shipping_mode_id, shipping_mode_desc)
values 
  ('FEDEX1', 'Fed Ex Overnight' )
, ('FEDEX2', 'Fed Ex Next Day' )
, ('USPS1',  'Postal Priority' )
, ('UPSGR',  'UPS Ground' )
;

-- credit ratings
insert into a_oe.credit_ratings  values 
  (   0,  1000,  'Standard')
, ( 1001, 2000,  'Good')
, ( 2001, 5000,  'High')
, ( 5001, 10000, 'Excellent')
, (10001, 99999, 'Superior')
;




-- a_oe.customers
insert into a_oe.customers(cust_id, cust_name_first, cust_name_last, credit_limit) 
values
 (401250, 'Samuel','Morse', 750)
,(401890, 'William','Northrep', 1750)
,(402100, 'William','Morise', 750) 
,(402110, 'John','Coltrane', 750)
,(402120, 'Tyner','McCoy', 750)
,(402500, 'Elton John','Jones', null)
,(403000, 'Sally','Williams', 6000)
,(403010, 'Elisha','Otis', 6000)
,(403050, 'Alexis','Hamilton' , 6000)
,(403100, 'James','Stevenson', 6000)
,(403500, 'JAMES','Stevenson', 6000)
,(403750, 'Mary','O''Leary', 6000)
,(403760, 'Mary','O''Leary', 6000)
,(903000, 'Arnold','McGold', 6000)
,(404000, 'Frederick','Olmsted', 3500)
,(404100, 'D. K.','Button', 3500)
,(900300, 'Arnold','McGold', 6000)
,(404150, 'Tom','Dancer', 3500)
,(404180, 'Danielle','Shay', 3500)
,(404890, 'Florence','Kelley', 1750)
,(404900, 'Al','Williams', 1750)
,(404950, 'William','Morris', 1750)
,(405000, 'David','Day', null)
,(409010, 'William','Morris', 1750)
,(409020, 'William','Max' , 1750)
,(915001, 'Abigail','Adams', 1750)
,(400801, 'Geo','Washington', 750)
,(409030, 'Barry','Mazur', 6000)
,(409150, 'Joan','Martin', 1750)
,(400300, 'Arnold','McGold', 6000)
,(409160, 'Jane','Martin', 1750)
,(409190, null, 'Prince', 1750)
,(408770, 'Clem','Clay', 7500)
,(408777, 'Morris','Morise', 7500)
;



--  a_oe.order_headers   and  a_oe.order_details
      
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 519,   '2014-04-04','ONLINE', 401890, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 519, 1, 1020,    12.95, 5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 519, 2, 1110,    49.99, 1); 

 insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 520,   '2014-04-04','ONLINE', 404900, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 520, 1, 1020,    12.95, 3);      
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 520, 2, 2747,    12.95, 3);   
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 522,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 522, 1, 1080,    22.50, 2);

 insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 715,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 715, 1, 1110,    49.99,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 715, 3, 2014,   15.59,  1);  
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 715, 4, 2984,   15.87,  1);  
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 716,    '2015-02-06','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 716, 1, 1020,    12.95,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 718,   '2014-04-08','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 718, 1, 1141,    75.99,  3);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 718, 2, 1125,   500.00,  1);   
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 523,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 523, 1, 1130,   149.99, 1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 524,   '2014-04-07','DIRECT', 409160, 'FEDEX1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 524, 1, 1090,   145.99,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 524, 4, 1070,    15.00,  2);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 525,   '2014-05-09','DIRECT', 409160, 'FEDEX1', 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 525, 1, 2412,    9.87,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 525, 2, 2947,    12.45,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 525, 3, 2014,    15.95,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 525, 5, 2746,    14.50,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 527,   '2014-05-01', 'ONLINE', 403050, 'USPS1', 2, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 527, 1, 1150,     4.25, 50);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 527, 2, 1141,    75.99,  3);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 528,   '2014-05-01', 'ONLINE', 403000, 'USPS1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 528, 1, 1070,    25.50,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 528, 2, 1030,    20.50, 16);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 528, 4, 1010,   150.00, 15);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 529,   '2014-05-12', 'DIRECT', 403000, 'UPSGR',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 529, 1, 1130,   149.99,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 529, 3, 1020,    12.95, 10);

 insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 535,   '2014-05-12', 'DIRECT', 404950, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 535, 1, 1040,   300.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 535, 2, 1050,   225.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 536,   '2014-05-12', 'DIRECT', 403000, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 536, 1, 1040,   300.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 536, 2, 1050,   225.00,  1);       

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 540,   '2014-06-02', 'DIRECT', 404950, 'FEDEX1', 1, 145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 540, 1, 1080,    22.50, 2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 540, 2, 1110,    49.99, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 540, 3, 1152,    55.25, 1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 390,   '2014-06-04', 'DIRECT', 403000, 'FEDEX1', 9,  155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 390, 1, 1010,   175.00,  8);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 395,   '2014-06-04', 'DIRECT', 403000, 'FEDEX1', 9,  155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 395, 1, 1010,   195.00, 15);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 301,   '2014-06-04', 'DIRECT', 401250, 'FEDEX2', 9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 301, 1, 1100,   205.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 302,   '2014-06-04', 'DIRECT', 404000, 'USPS1', 2,  150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 302, 1, 1140,    12.00, 10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 302, 2, 1040,   349.95,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 303,   '2014-06-10', 'DIRECT', 404100, 'USPS1', 2,  155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 303, 1, 1000,   125.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 306,  '2014-06-04', 'DIRECT', 903000, 'USPS1', 9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 306, 1, 1120,   500.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 306, 2, 1125,   500.00,  1);

 insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 307,  '2014-06-04', 'DIRECT', 900300, 'USPS1', 9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 307, 1, 1120,   450.00, 5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 307, 2, 1125,   450.00, 5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 312,  '2014-06-07', 'DIRECT', 903000, 'USPS1', 5,  145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 312, 1, 1040,   300.00, 10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 312, 2, 1050,   250.00, 10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 312, 3, 1060,   140.50, 10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 312, 4, 1060,   125.00, 20);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 313,  '2014-06-07', 'DIRECT', 903000, 'USPS1', 5,  155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 313, 1, 1000,   125.00, 1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 324,  '2014-06-11', 'DIRECT', 409030, 'UPSGR',  9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 324, 1, 4576,    29.95, 20);
 
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 378,  '2014-06-14', 'DIRECT', 400300, 'USPS1', 9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 378, 1, 1120,   450.00, 5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 378, 2, 1125,   450.00, 5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 411,   '2014-08-01', 'DIRECT', 404950, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 411, 1, 1071,    25.00,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 411, 2, 1072,    24.25,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 411, 3, 1060,   255.95,  2);  
       
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 412,   '2014-08-01', 'DIRECT', 403000, 'UPSGR', 1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 412, 2, 1130,   149.99,  1); 


insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 413,   '2014-08-07','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 413, 2, 1110,   49.99,  10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 413, 3, 2014,   15.59,  5);  
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 413, 4, 2984,   15.87,  5);  

    
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 414,   '2014-08-20','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 414, 1, 1020,    12.95,  13);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 415,   '2014-08-23','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 415, 1, 1141,    75.99,  5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 415, 2, 1125,   500.00,  5);   
   
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 550,   '2014-08-02','DIRECT', 903000, NULL, 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 550, 1, 1010,   175.00, 10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 550, 2, 1040,   300.25,  1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 551,   '2014-08-03','DIRECT', 903000, NULL, 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 551, 1, 1010,   175.00, 20);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 552,  '2014-08-12', 'DIRECT', 401250, 'FEDEX1', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 552, 3, 2014,   15.59,  5);  
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 552, 2, 2984,   15.87,  5);        
              
              

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 605,  '2014-09-05', 'DIRECT', 404100, 'UPSGR',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 1, 1080,    25.00, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 2, 1130,    112.95, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 3, 1060,   125.00,  5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 4, 1080,    25.00, 12);
 insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 5, 1010,    125.00, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 605, 6, 1020,    12.95, 1);            

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 606,  '2014-09-07', 'DIRECT', 409160, 'FEDEX1',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 606, 1, 1152,    55.00, 1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 607,  '2014-09-15', 'DIRECT', 409160, 'FEDEX1',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 607, 1, 1070,    22.25, 10);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 608,  '2014-09-26', 'DIRECT', 403000, 'UPSGR',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 608, 1, 1000,    100.00, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 608, 6, 1020,    12.95, 4);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 609,  '2014-09-27', 'DIRECT', 900300, 'USPS1',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 609, 1, 1080,    25.00, 5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 609, 3, 1010,   175.00, 20);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 609, 2, 1040,   300.25, 20);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 610,  '2014-09-27', 'DIRECT', 903000, 'UPSGR',  1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 610, 1, 4577,    29.95, 2);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 611,  '2014-09-30', 'DIRECT', 403000, 'USPS1',  1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 611, 1, 1080,    25.00, 12);


insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 105,   '2014-10-01', 'DIRECT', 403000, 'UPSGR',  1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 105, 1, 1030,    25.00, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 105, 2, 1020,    12.95, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 105, 3, 1010,   150.00,  5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 106,   '2014-10-01', 'DIRECT', 401250, 'FEDEX1', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 106,1 , 1060,   255.95,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 107,   '2014-10-02', 'ONLINE', 403050, 'USPS1', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 107, 1, 1110,    49.99,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 108,   '2014-10-02', 'ONLINE', 403000, 'USPS1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 108, 1, 1080,    22.50,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 109,   '2014-10-12', 'DIRECT', 403000, 'UPSGR',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 109, 1, 1130,   149.99,  1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 110,   '2014-10-12', 'DIRECT', 404950, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 110, 1, 1090,   149.99,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 110, 2, 1130,   149.99,  1); 

       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 400,   '2014-10-15', 'ONLINE', 403100, 'USPS1', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 400, 1, 5002,    23.00,  5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 400, 2, 5004,    15.00,  5);
       insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 400, 3, 5005,    45.00,  5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 400, 4, 5008,    10.00,  5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 401,   '2014-10-15', 'ONLINE', 403100, 'USPS1', 2, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 401, 1, 5002,    23.00,  3);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 401, 2, 4577,    29.95, 3);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 402,   '2014-10-18', 'ONLINE', 403100, 'USPS1', 2, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 402, 1, 5002,    23.00,  3);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 402, 2, 4577,    29.95,  3);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 405,   '2014-11-19', 'DIRECT', 408770, 'FEDEX1', 1, 145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 1, 1010,   150.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 2, 1020,    12.95,  1);    
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 3, 1030,    29.95,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 4, 1040,   349.95,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 5, 1050,   269.95,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 405, 6, 1060,   255.95,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 407,   '2014-11-15', 'DIRECT', 403100, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 407, 1, 5008,     8.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 407, 2, 5005,    42.15,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 407, 3, 5005,    42.50,  1);         
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 408,   '2014-11-20', 'DIRECT', 404950, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 408, 1, 1071,    15.00,  1);
     
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 111,   '2014-11-01', 'DIRECT', 403000, 'UPSGR', 1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 111, 1, 1150,     4.99, 50);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 111, 2, 1141,    75.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 112,   '2014-11-08', 'DIRECT', 401890, 'USPS1',  2, 145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 112, 1, 1110,    49.99,  2);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 113,   '2014-11-08', 'ONLINE', 401250, 'FEDEX2', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 113, 1, 1080,    22.50,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 114,   '2014-11-08', 'DIRECT', 402100, 'USPS1',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 114, 1, 1130,   125.00,  5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 115,   '2014-11-08', 'ONLINE', 402100, 'USPS1',  1, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 115, 1, 1000,   100.00,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 115, 2, 1120,   475.00,  4);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 115, 3, 1080,    25.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 115, 4, 1100,    45.00,  4);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 116,   '2014-11-12', 'ONLINE', 405000, NULL,  9, 155);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 117,  '2014-11-28', 'ONLINE', 402100, NULL,  9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 117, 1, 1150,     4.99,   4);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 117, 2, 1141,    75.00,  4);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 117, 3, 1030,    27.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 118,   '2014-11-28', 'DIRECT', 403010, NULL,  3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 118, 1, 1125,   475.00,  4);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 119,   '2014-11-28','DIRECT', 401250, NULL, 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 119, 1, 1070,    22.50, 10);
       



insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 123,   '2014-12-05','ONLINE', 409150, 'USPS1', 3, 155);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 124,   '2014-12-07','DIRECT', 409160, 'FEDEX1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 124, 1, 1151,    14.99,  1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 125,   '2014-12-09','DIRECT', 409160, 'FEDEX1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 125, 1, 1152,    55.00,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 126,   '2014-12-15','DIRECT', 409190, 'FEDEX1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 126, 1, 1100,    49.99, 1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 127,   '2014-12-15','ONLINE', 915001, 'USPS1', 4, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 127, 1, 1100,    49.99,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 127, 3, 1080,    25.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 127, 2, 1110,    49.99,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 128,   '2014-12-15','ONLINE', 409030, 'FEDEX1', 4, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 128, 1, 1060,   255.95,  2);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 129,   '2014-12-15','DIRECT', 915001, 'FEDEX1', 7, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 129, 1, 1141,    99.99,  3);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 130,   '2014-12-30','ONLINE', 409030, 'USPS1', 7, 145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 130, 1, 1120,   500.00,1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 130, 2, 1125,   500.00, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 130, 3, 1090,   145.00, 1);			  
			  


       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2503,   '2015-01-04', 'DIRECT', 404100, 'USPS1', 2,  155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2503, 1, 1130,   149.99,  1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2504,   '2015-01-11', 'DIRECT', 404100, 'UPSGR',  9, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2504, 1, 1130,   149.99,  1);
       
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2505,   '2015-01-12', 'DIRECT', 403000, 'UPSGR',  1, 145);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2505, 1, 1080,    22.50,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2505, 2, 1110,    49.99, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2505, 3, 1060,   255.95, 1);
     
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2506,   '2015-01-12', 'DIRECT', 401250, 'FEDEX1', 2, 150);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2120,   '2015-01-02','DIRECT', 903000, NULL, 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2120, 1, 1010,   175.00, 10);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2121,   '2015-01-03','DIRECT', 903000, NULL, 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2121, 1, 1010,   175.00, 20);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2121, 2, 1040,   300.25,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2122,   '2015-01-23','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2122, 1, 1070,    25.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2122, 2, 1071,    25.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2122, 3, 1072,    25.00,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2122, 5, 1070,    15.00,  2);
       
insert into a_oe.order_headers(ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2507,   '2015-02-01', 'ONLINE', 403050, 'USPS1', 2, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2507, 2, 1090,   145.99,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2805,  '2015-01-05', 'DIRECT', 404100, 'UPSGR',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2805, 1, 1080,    25.00, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2805, 2, 1130,    112.95, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2805, 3, 1060,   125.00,  5);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2806,  '2015-01-07', 'DIRECT', 409160, 'FEDEX1',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2806, 1, 1152,    55.00, 1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2807,  '2015-01-15', 'DIRECT', 409160, 'FEDEX1',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2807, 1, 1070,    22.25, 10);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3808,  '2015-01-26', 'DIRECT', 403000, 'UPSGR',  1, 207);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3808, 1, 1000,    100.00, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3808, 2, 1010,    125.00, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3808, 3, 1020,    12.95, 1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3809,  '2015-01-27', 'DIRECT', 900300, 'USPS1',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3809, 1, 1080,    25.00, 5);


insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3810,  '2015-01-27', 'DIRECT', 903000, 'UPSGR',  1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3810, 1, 4577,    29.95, 2);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2811,  '2015-01-31', 'DIRECT', 403000, 'USPS1',  1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2811, 1, 1080,    25.00, 12);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2811, 2, 1080,    25.00, 12);
	   
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2508,   '2015-02-01', 'ONLINE', 403000, 'USPS1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2508, 1, 1152,    55.25,  4);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2508, 2, 1152,    27.15,  6);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2509,   '2015-02-12', 'DIRECT', 403000, 'UPSGR',  1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2509, 1, 1090,   149.99,  5);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2509, 2, 1130,   149.99,  2); 

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 4510,   '2015-02-01', 'DIRECT', 404950, 'FEDEX1', 1, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4510, 1, 1071,    25.00,  2);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4510, 2, 1072,    24.25,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 4511,   '2015-02-01', 'DIRECT', 403000, 'UPSGR', 1, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4511, 2, 1130,   149.99,  1); 
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4511, 3, 1060,   255.95,  1);  

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3515,   '2015-02-02','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3515, 1, 1110,    49.99,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3516,   '2015-02-02','ONLINE', 409150, 'USPS1', 3, 150);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3516, 1, 1020,    12.95,  1);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3518,   '2015-02-03','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3518, 1, 1141,    75.99,  3);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3518, 2, 1125,   500.00,  1);   
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3518, 3, 2014,   15.59,  1);  
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3518, 4, 2984,   15.87,  1);  
       
 

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2218,   '2015-03-08','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2218, 7, 2746,    14.50,  1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2218, 5, 1141,    75.99,  3);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2218, 3, 1125,   500.00,  5);   
 insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2218, 1, 2014,    15.95,  5);

	   
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 223,   '2015-03-05','ONLINE', 409150, 'USPS1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 223, 1, 1130,   148.99, 1);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 223, 5, 1150,     7.25, 50);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 223, 6, 1141,    75.99,  3);
	   
insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 4224,   '2015-03-07','DIRECT', 409160, 'FEDEX1', 3, 155);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4224, 1, 1090,   145.99,  10);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 4224, 4, 1070,    15.00,  10);

insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 2225,   '2015-03-09','DIRECT', 409160, 'FEDEX1', 3, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2225, 1, 2412,    9.87,  0);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 2225, 2, 2947,    12.45,  5);


insert into a_oe.order_headers (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       values ( 3227,   '2015-03-01', 'ONLINE', 403050, 'USPS1', 2, null);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3227, 1, 1150,     4.25, 50);
insert into a_oe.order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       values ( 3227, 2, 1141,    75.99,  3);
       
