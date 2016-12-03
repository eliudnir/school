Use a_testbed;

/*  remove any rows currently in the table */
delete from a_testbed.zoo_2015;

/*  inserts for the zoo_2015 table */
Insert Into a_testbed.zoo_2015  (z_id, z_name, z_type, z_cost, z_dob, z_acquired)   Values
   (23,'Sam','Giraffe', 5000.00, '2012-05-15','2012-05-15');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (25, 'Abigail', 'Armadillo', 490.00, '2014-12-15', '2015-01-05');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (56, 'Leon', 'Lion', 5000.00, '2010-02-25', '2010-03-25');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (57, 'Lenora', 'Lion', 5000.00, '2014-03-25', '2014-03-31');

Insert Into a_testbed.zoo_2015(z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (85, 'Sally', 'Giraffe', 5000.25, '2011-05-15', '2012-05-15');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (43, 'Huey', 'Zebra', 2500.25, '2013-06-02', '2014-06-02');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (44, 'Dewey', 'Zebra', 2500.25, '2013-06-02', '2014-06-02');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (45, 'Louie', 'Zebra', 2500.25, '2013-01-02', '2014-01-02'); 
  
Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values  
   (47, null,'Horse', 490.00, '2010-05-15 ','2010-04-15');

Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (52, 'Dewey', 'Giraffe',3750.00, '2013-06-06:00', '2013-07-12');

