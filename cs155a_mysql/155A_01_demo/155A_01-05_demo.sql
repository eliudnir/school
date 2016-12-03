Use a_testbed;
/*   demo 01  */
/*  additional inserts */


  
Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) 
 Values  (370, 'Anders', 'armadillo', 490.00, '2010-01-15 08:30:00', '2010-04-15');

Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
  Values (371, 'Anne', 'armadillo', 490.01, '2010-01-15 08:30:00', '2010-04-15');

Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
  Values (372, 'Leon', 'Lion', 1850.00, '2009-02-25 15:00:00', '2010-03-25');

Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
  Values (373, null, 'Lion', 1850.00, '2009-02-25 15:00:00', '2010-03-25');

Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
  Values (374, null, 'Lion', 1850.00, '2009-02-25 15:00:00', '2010-03-25');

Insert Into zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
  Values (375, '', 'Lion', 1850.00, '2009-02-25 15:00:00', '2010-03-25');
  


/*   demo 02  */
Select
  z_type
, z_name
From zoo_2015;

/*   demo 03  */
Select
  z_dob
, z_cost
, z_name
From zoo_2015;

/*   demo 04  */
Select  *
From zoo_2015; 

/*   demo 05  */
Select
  z_id
, z_dob As birthdate
, z_cost As price
, z_name As name
From zoo_2015;

/*   demo 06  */
Select
  z_id
, z_dob As "Date of Birth"
, z_cost As "Price $"
, z_name As "Name"
From zoo_2015;

/*   demo 07 */
Select
  z_id
, z_dob As "BirthDate"
, z_cost As "Price"
, z_name As "Name"
From zoo_2015
Order By z_cost;

/*   demo 08 */
Select
  z_id
, z_dob As "BirthDate"
, z_cost As "Price"
, z_name As "Name"
From zoo_2015
Order By z_cost Desc;

/*   demo 09  */
Select
  z_type As "Type"
, z_cost As "Price"
, z_name As "Name"
From zoo_2015
Order By z_type, z_cost;

/*   demo 10  */
Select
  z_type As "Type"
, z_cost As "Price"
, z_name As "Name"
From zoo_2015
Order By z_type, z_cost Desc;

/*   demo 11  */
Select
  z_type As "Type"
, z_name As "Name"
From zoo_2015
Order By z_name;

/*   demo 12  */
Select
  z_type As "Type"
, z_name As "Name"
From zoo_2015
Order By z_name Desc;

/*   demo 13  */
Select
  z_id
, z_dob As "BirthDate"
, z_name As "Name"
From zoo_2015
Order By z_dob Desc;

/*   demo 14  */
Select
  z_id
, z_dob As "Date of Birth"
, z_name As "Name"
From zoo_2015
Order By `Date of Birth` ;

/*   demo 15  */
Select
  z_id
, z_dob As "Date of Birth"
, z_name As "Name"
From zoo_2015
Order By "Date of Birth";

/*   demo 16  */
Select
  z_id
, z_type
, z_name
From zoo_2015
Order By 2, 3;

/*   demo 17  */
Select
  z_id
, EXTRACT(Month From z_dob) As "Birth Month"
, z_name As "Name"
From zoo_2015
Order By EXTRACT(Month From z_dob);
