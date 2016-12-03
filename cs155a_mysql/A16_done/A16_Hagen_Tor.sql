/* Tor Hagen */

\W    /* enable warnings! */

/*  TASK 00 */
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select id,
extractValue(an_data, '/client/cl_name') as "Client",
cast(extractValue(an_data, '/client/@cl_id') as int) as "ClientID"
from a_testbed.xml_animals
order by ClientID;

/*  TASK 02 */
select id,
extractValue(an_data, '/client/pets/animal/an_id') as "AnimalID",
extractValue(an_data, '/client/pets/animal/an_type') as "TypeOfAnimal",
extractValue(an_data, '/client/pets/animal/an_name') as "Name",
extractValue(an_data, '/client/pets/animal/an_price') as "Price"
from a_testbed.xml_animals
order by AnimalID;

/*  TASK 03 */
select extractValue(an_data, '/client/cl_name') as "ClientName",
extractValue(an_data, '/client/@cl_id') as "ClientID"
from a_testbed.xml_animals
where extractValue(an_data, 'count(/client/pets/animal[an_type="cat"])') > 0;

/*  TASK 04 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID",
extractValue(an_data, 'count(/client/pets/animal/an_id)') as "NumberOfAnimals"
from a_testbed.xml_animals
order by NumberOfAnimals desc;

/*  TASK 05 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID",
if(extractValue(an_data, 'count(/client/pets/animal/an_id)') > 0,
  if(length(extractValue(an_data, '/client/pets/animal[1]/an_name')) > 0,
    concat(extractValue(an_data, '/client/pets/animal[1]/an_type'), " named ",
    extractValue(an_data, '/client/pets/animal[1]/an_name')),
  concat(extractValue(an_data, '/client/pets/animal[1]/an_type'), " named ",
  "(No name provided)")), "This client has no animals") as "Animal_First"
from a_testbed.xml_animals;

/*  TASK 06 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID",
if(length(extractValue(an_data, '/client/pets/animal[1]/an_name')) > 0,
	concat(extractValue(an_data, '/client/pets/animal[1]/an_type'), " named ",
  if(extractValue(an_data, 'count(/client/pets/animal[1]/an_name)') > 1,
    extractValue(an_data, '/client/pets/animal[1]/an_name[last()]'),
    extractValue(an_data, '/client/pets/animal[1]/an_name'))),
  concat(extractValue(an_data, '/client/pets/animal[1]/an_type'), " with no name"))
  as "Animal_First"
from a_testbed.xml_animals
where extractValue(an_data, 'count(/client/pets/animal/an_id)') > 0;

/*  TASK 07 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID"
from a_testbed.xml_animals
where extractValue(an_data, '/client/pets/animal[1]/an_type') != ""
and extractValue(an_data, '/client/pets/animal[2]/an_type') != ""
and extractValue(an_data, '/client/pets/animal[4]/an_type') = "";

/*  TASK 08 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID"
from a_testbed.xml_animals
where extractValue(an_data, 'count(/client/pets/animal/an_type[self:text()="bird"]/../an_price[self:text()=250])') > 0;

/*  TASK 09 */
select extractValue(an_data, '/client/cl_name') as "Client",
extractValue(an_data, '/client/@cl_id') as "ClientID"
from a_testbed.xml_animals
where extractValue(an_data, 'count(/client/pets/animal/an_type[self:text()="bird"]/../an_price[self:text()=250])') > 0
and extractValue(an_data, 'count(/client/pets/animal/an_type[self:text()="cat"])') > 1;

/*  TASK 10 */
