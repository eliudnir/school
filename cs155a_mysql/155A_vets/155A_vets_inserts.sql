--  inserts for cs 155A vets 
use a_vets;

--  ---------- clear  earlier versions
delete from vt_exam_details;
delete from vt_exam_headers;
delete from vt_animals;
delete from vt_clients;
delete from vt_animal_types;
delete from vt_services;
delete from vt_staff_pay;
delete from vt_staff;


--  ---------- staff inserts
insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (15,  'Dolittle', 'Eliza', 'vet');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (20, 'Horn', 'Shirley', 'clerical');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (25,  'Wilkommen', 'Bridgette', 'vet');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (29,  'Helfen', 'Sandy', 'vet assnt');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (30, 'Wasilewski', 'Marcin', 'vet');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (55,  'Helfen', 'Sandy', 'vet assnt');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (43,  'Halvers', 'Pat', 'kennel');

insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (37,  'Webster', 'Brenda', 'vet assnt');

insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (38,  'Wabich', 'Rhoda', 'vet');  

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (52,  'Gordon', 'Dexter', 'vet assnt');

--  ---------- staff pay inserts
insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (15, '123456789', 40000, '2005-06-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (20,  '398678765', 35000, '2005-08-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (25,  '876582345',65000,  '2011-06-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (30,  '323445996',99000,  '1995-01-06');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (55,  '323438454', 37500,   '2014-09-26');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (52,  '325778945', 20000,   '2014-08-12');  

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
 values (37,  '323458945', 20000,  '2013-01-13'); 

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (38,  '322588945', 20000,   '2013-01-13');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (43,  '325771545', 15500,   '2011-08-12'); 

  
  
  
--  ---------- services inserts
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (101, 50, 'Dental Cleaning-Canine', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (105, 80, 'Routine Exam-Canine', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (110, 100, 'Dental Cleaning-Other', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (225, 75, 'Feline PCR Series', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (102, 45, 'Dental Cleaning-Feline', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (398, 35, 'Followup Exam-Canine', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (400, 10.5, 'Hazardous Materials Disposal', 'treatment');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (106,75, 'Routine Exam-Bird', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (306, 32, 'Followup Exam-Bird', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (108, 80, 'Routine Exam-Feline', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (308, 45, 'Followup Exam-Feline', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (104, 60, 'Routine Exam-Reptile', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (341, 25, 'Followup Exam-Reptile', 'office visit');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (523, 60, 'Routine Exam-Small Mammal', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (524, 25, 'Followup Exam-Small Mammal', 'office visit');  
 
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (551, 35.5, 'First Feline PCR', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (552, 25, 'Second Feline PCR', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (553, 25, 'Third Feline PCR', 'medicine');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (1002, 25, 'Scaly Mite Powder', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (1003, 26, 'Intestinal Parasite Screen', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (4601, 275, 'Feline Behaviour Modification Consultation', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (687, 45, 'Vitamin E- Concentrated', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (748, 29.50, 'Preds-liver', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (749, 29.50, 'Preds-chicken', 'medicine');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (602, 222.00, 'General Anethesia 1 hour', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (603, 78.00, 'Feline Dental X_ray', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (604, 109.00, 'Dental Scaling', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (605, 535.00, 'Tooth extraction Level 1', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (606, 40.00, 'Tooth extraction Level 2', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (607, 57.00, 'Tooth extraction Level 3', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (612, 25.91, 'Buprenex oral drops 1 ml', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (613, 47.00, 'Hospital stay- short', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (615, 78.30, 'antibiotics', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (625, 155, 'CBC and scan', 'treatment'); 
 

--  ----------  animal type inserts
insert into vt_animal_types (an_type) 
  values ('capybara');
insert into vt_animal_types (an_type) 
  values ('cat');
insert into vt_animal_types (an_type) 
  values ('chelonian');
insert into vt_animal_types (an_type) 
  values ('crocodilian');  
insert into vt_animal_types (an_type) 
  values ('bird');  
insert into vt_animal_types (an_type) 
  values ('dog');
insert into vt_animal_types (an_type) 
  values ('dormouse'); 
insert into vt_animal_types (an_type) 
  values ('hamster');    
insert into vt_animal_types (an_type) 
  values ('hedgehog');
insert into vt_animal_types (an_type) 
  values ('olinguito');
insert into vt_animal_types (an_type) 
  values ('lizard');  
insert into vt_animal_types (an_type) 
  values ('porcupine');
insert into vt_animal_types (an_type) 
  values ('snake');


--  ----------  clients inserts
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (408763, 'Turrentine', 'Stanley', '2920 Zoo Drive', 'San Diego', 'CA', '92101', '619.231.1515');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (4534, 'Montgomery', 'Wes', 'POB 345', 'Dayton', 'OH', '45402', '614.257.7812');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone) 
  values (3560, 'Monk', 'Theo', '345 Post Street', 'New York', 'NY', '10006', '212.582.6245');
  
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (3423, 'Hawkins', 'Coleman', '23 Ruby Lane', 'Springfield', 'OH', '45502', '937.258.5645');   

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (1825, 'Harris', 'Eddie', '2 Marshall Ave', 'Big Rock', 'AR', '71601', '501.498.5000');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (1852, 'Dalrymple', 'Jack', '2 Marshall Ave', 'Big Rock', 'ND', '58503', '701.328.2725');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (6897, 'Drake', 'Donald', '50 Phelan Ave', 'Springfield', 'MO', '65802', '660.600.6623');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (411, 'Carter', 'James', '2 Marshall Ave', 'Big Rock', 'AR', '71601', '510.258.4546'); 

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (7152, 'Brubeck', 'Dave', '50 Green St', 'Spring Valley', 'MA', '21579', '258.257.2727');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (7212, 'Davis', 'Donald', '124 Fifth', 'San Francisco', 'NM', '87801', '505.897.4500');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values  (25479, 'Boston', 'Edger', 'POB 2', 'Boston', 'MA', '21555', '258.528.6412'); 

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5698, 'Biederbecke', 'Sue', '50 Phelan Ave', 'Springfield', 'IL', '62701', '217.239.6875');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5699, 'Biederbecke', 'Sam', '549 Market Ave', 'San Francisco', 'CA', '94101', '415.239.6875');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5686, 'Biederbecke', null, '50 Phelan Ave', 'Springfield', 'IL', '62701', '217.239.6945');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5689, 'Biederbecke', null, '50 Phelan Ave', 'San Francisco', 'CA', '94112', '415.239.6945');


--  ----------  animal inserts
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(15165, 411, 'Burgess', 'dog', '2005-11-20' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(15401, 411, 'Pinkie', 'lizard', '1998-03-15' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(19845, 411, 'Pinkie', 'dog', '2009-02-02' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21001, 411, 'Yoggie', 'hedgehog', '2013-01-22' );
  
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21003, 411, 'Calvin Coolidge', 'dog', '2004-06-18' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21005, 1825, 'Koshka', 'dormouse', '2013-03-30' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21006, 1825, 'Koshka', 'hamster', '2011-06-06' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(16002, 1825, 'Fritz', 'porcupine', '2010-05-25' );

 insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(16003, 1825, 'Ursula', 'cat', '2013-02-06' );  

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(10002, 3560, 'Gutsy', 'cat', '2010-04-15' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(12035, 3560, 'Mr Peanut', 'bird', '1995-02-28' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(12038, 3560, 'Gutsy', 'porcupine', '2012-04-29' );    

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(11015, 4534, 'Kenny', 'snake', '2012-02-23' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(11025, 4534, null, 'bird', '2012-02-01' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(11029, 4534, null, 'bird',   '2012-10-01' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(15001, 5699, 'Big Mike', 'chelonian', '2008-02-02' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(15002, 5699, 'George', 'chelonian', '2008-02-02' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21004, 5699, 'Gutsy', 'snake', '2011-05-12' );  
  
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(17002, 5699, 'Fritzchen', 'porcupine',  '2012-06-02' ) ; 

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(17025, 5699, '25', 'lizard', '2010-01-10' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(16004, 6897, 'Napper', 'cat', '2006-06-06' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(17026, 7152, '3P#_26', 'lizard', '2010-01-10' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(17027, 7152, '3P#_25', 'lizard', '2010-01-10' );   

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21002, 1825, 'Edger', 'hedgehog', '2002-10-02' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21007, 1852, null, 'snake', '2010-06-12' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21314, 1852, 'Adalwine', 'cat', '2011-06-11' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21315, 1852, 'Baldric', 'cat', '2012-06-11' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21316, 1852, 'Etta', 'cat', '2010-06-11' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21317, 1852, 'Manfried', 'cat', '2011-06-11' );

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21318, 1852, 'Waldrom', 'cat', '2012-06-11' );  

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21320, 1852, 'Morris', 'olinguito',  '2014-06-11' );  

insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21321, 1852, 'Morton', 'olinguito',  '2014-06-03' );  
  
--  ----------  exam inserts    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3105, 17002, 29, '2014-10-10 9:15:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3105, 1, 523, 50.50, 'checkup'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3105, 2, 110, 150.00, 'dental'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3010, 17026, 29, '2014-10-22 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3010, 1, 104, 25.00, 'routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3010, 2, 605, 535.00, 'tooth extraction'  );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3001, 17027, 29, '2014-10-24 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3001, 1, 104, 25.00, 'routine exam'  );    
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3202, 17025, 29, '2014-10-03 14:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3202, 1, 341, 20.00, 'followup on parasites'  );


	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3513, 15401, 15, '2014-11-06 10:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3513, 1, 104, 30.00, 'yearly checkup'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3513, 2, 110, 75.00, 'repeat treatment'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3514, 15002, 29, '2014-11-10 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3514, 1, 104, 30.00, 'routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3514, 2, 1002, 15.00, 'mite infection'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3514, 3, 1003, 25.00, 'parasite screen'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3552, 16003, 15, '2014-11-10 10:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3552, 1, 308, 2.25, 'Dental followup- phone'  );	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3203, 16002, 29,  '2014-11-03 14:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3203, 1, 524, 20.00, 'followup on parasites'  );    

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3282, 21001, 15, '2014-11-23 10:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3282, 1, 523, 60, 'yearly checkup'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3282, 2, 110, 50, 'minor buildup'  );   
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3282, 3, 615, 25.25, 'antibiotic half dosage'  );  	
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3304, 17027, 15, '2014-11-06 10:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3304, 1, 341, 25, 'yearly checkup'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3304, 2, 1003, 25, 'test for repeat infection'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3306, 17025, 29, '2014-11-06 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3306, 1, 104, 30.00, 'routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3306, 2, 687, 45.00, 'liquid form'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3306, 3, 1002, 25.00, 'parasite external'  );
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3390, 19845, 15, '2014-11-22 09:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3390, 1, 105, 55, 'yearly checkup'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3390, 2, 101, 70, 'major buildup'  );

	
 insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3411, 17025, 29, '2014-12-29 14:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3411, 1, 341, 20.00, 'followup on parasites'  );

 insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3412, 17025, 29, '2014-12-30 14:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3412, 1, 341, 20.00, 'followup on parasites'  );
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3413, 16003, 15, '2014-12-01 16:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3413, 1, 308, 5.00, 'follow up check up'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3612, 16003, 15, '2014-12-23 08:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 1, 602, 222.00, 'Dental anethesia'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 2, 603, 78.00, 'Dental'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 3, 604, 109.00, 'Dental- mild'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 4, 625, 155.00, 'Dental -pre tests'  );      
    insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 5, 606, 40.00, 'Dental tooth 1'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 6, 607, 57.00, 'Dental tooth 2'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 7, 612, 25.91, 'as needed at home'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 8, 613, 47.00, 'Feline cage'  );
      insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 9, 615, 78.30, 'in-patient'  );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3392, 21003, 15, '2014-12-26 09:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3392, 1, 398,30, 'weight loss follow up '  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3392, 2, 400, 21, 'discard first sample');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3392, 3, 1003, 45, 'retest for parasites'    );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3393, 16002, 29, '2014-12-23 12:15:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3393, 1, 748, 29.50, 'rat ulcer recurrence'  );    
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3393, 3, 749,0.00, 'rat ulcer recurrence'  );  
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3409, 17027, 29, '2014-12-27 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3409, 1, 104, 25.00, 'routine exam'  );
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3486, 21005, 15, '2014-12-31 13:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3486, 1, 4601, 275, 'aggressive behaviour' );

	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4101, 15001, 15, '2015-01-02 13:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4101, 1, 104, 60, 'reg exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4101, 2, 615, 75.00, 'poss infection' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4102, 15002, 15, '2015-01-08 13:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4102,  1, 104, 60, 'reg exam' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4103, 16002, 38, '2015-01-08 15:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4103, 1, 4601, 275, 'aggressive behaviour' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3104, 12035, 38, '2015-01-09 16:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3104, 1, 106, 75, 'moult' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3104, 2, 613, 47, 'confine for the first molt' );    
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3325, 17026, 29, '2015-01-15 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3325, 1, 104, 25.00, 'routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3325, 2, 604, 59.00, 'dental'  );	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3420, 16003, 15, '2015-01-01 16:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3420, 1, 108, 80.00, 'yearly checkup'  );
 
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3494, 15001, 25, '2015-01-22 09:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3494, 1, 104, 30, 'follow up check up'  ); 
 	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3288, 15001, 25, '2015-01-31 09:00:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3288, 1, 104, 30, 'check up'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3288, 2, 1002, 25, 'mite infestation'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3288, 3, 687, 45, 'shell softening'  );     

	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3322, 16002, 29, '2015-02-10 9:15:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3322, 1, 748, 29.50, 'rat ulcer recurrence'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3321, 16002, 29, '2015-02-17 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3321, 1, 748, 0.00, 'rat ulcer recurrence'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3324, 17025, 29, '2015-02-25 10:45:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3324, 1, 104, 30.00, 'routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3324, 2, 687, 45.00, 'liquid form'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3324, 3, 1002, 25.00, 'parasite external'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3323, 16002, 29, '2015-02-25 14:30:00'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3323, 1, 524, 20.00, 'followup on parasites'  ); 
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3323, 3, 687, 45.00, 'followup on parasites'  ); 	

