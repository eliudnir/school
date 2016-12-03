-- MySQL CS 155A


use a_bkinfo;


delete from  a_bkorders.order_details;
delete from  a_bkorders.order_headers;
delete from  a_bkorders.customers ;
delete from  a_bkorders.handling_fees;
delete from  a_bkinfo.book_authors ;
delete from  a_bkinfo.authors;
delete from  a_bkinfo.book_topics;
delete from  a_bkinfo.topics;
delete from  a_bkinfo.books;
delete from  a_bkinfo.publishers;

insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values (  0,   5,  5.00);
insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values (  6,  15,  7.00);
insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values ( 16,  25,  9.00);
insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values ( 26,  50, 12.00);
insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values ( 51, 100, 15.00);
insert into  a_bkorders.handling_fees(low_limit, high_limit, handling_fee)  values (101, 999, 20.00);


-- publishers
Insert into a_bkinfo.publishers values (9000, 'Microsoft Press') ;
Insert into a_bkinfo.publishers values (9456, 'New Directions') ;
Insert into a_bkinfo.publishers values (9102, 'Alfred A. Knopf') ;
Insert into a_bkinfo.publishers values (9325, 'Addison Wesley') ;
Insert into a_bkinfo.publishers values (9745, 'Morgan Kaufmann') ;
Insert into a_bkinfo.publishers values (9521, 'Benjamin/Cummings') ;
Insert into a_bkinfo.publishers values (9822, 'O''Reilly') ; 
Insert into a_bkinfo.publishers values (9030, 'McGraw Hill') ;
Insert into a_bkinfo.publishers values (9444, 'APress') ;
Insert into a_bkinfo.publishers values (9528, 'Manning');
Insert into a_bkinfo.publishers values (9020, 'Princeton Univer Press') ;
Insert into a_bkinfo.publishers values (9021, 'Yale University Press') ;
Insert into a_bkinfo.publishers values (9022, 'Havard University Press') ;
Insert into a_bkinfo.publishers values (9507, 'J.Q. Vanderbildt');
Insert into a_bkinfo.publishers values (9664, 'WROX') ;
Insert into a_bkinfo.publishers values (9825, 'MySQL Press') ;
Insert into a_bkinfo.publishers values (9623, 'Prentice Hall') ;
Insert into a_bkinfo.publishers values (9725, 'Springer') ;
Insert into a_bkinfo.publishers values (9561, 'Houghton Mifflin'); 
Insert into a_bkinfo.publishers values (9902, 'W.W. Norton ') ;
Insert into a_bkinfo.publishers values (9023, 'Holt Paperbacks') ;
Insert into a_bkinfo.publishers values (9024, 'Univ of California Press') ;
Insert into a_bkinfo.publishers values (9776, 'Simon and Schuster') ;



-- topics
Insert into a_bkinfo.topics values ('ADO',   'ADO');
Insert into a_bkinfo.topics values ('CMP',   'Computer Science');
Insert into a_bkinfo.topics values ('DB',    'Database Systems');
Insert into a_bkinfo.topics values ('FCT',   'Fiction');
Insert into a_bkinfo.topics values ('HIST',  'History');
Insert into a_bkinfo.topics values ('MySQL', 'MySQL Database');
Insert into a_bkinfo.topics values ('NET',   '.NET Technologies');
Insert into a_bkinfo.topics values ('NOSQL', 'Alternate Data Storage');
Insert into a_bkinfo.topics values ('ORA',   'Oracle Database');
Insert into a_bkinfo.topics values ('POE',   'Poetry');
Insert into a_bkinfo.topics values ('PGM',   'General Programming');
Insert into a_bkinfo.topics values ('SCI',   'Science');
Insert into a_bkinfo.topics values ('SQL',   'SQL');
Insert into a_bkinfo.topics values ('SSRV',  'SQL Server Database');
Insert into a_bkinfo.topics values ('VB',    'Visual Basic');
Insert into a_bkinfo.topics values ('XML',   'XML Techniques');
Insert into a_bkinfo.topics values ('ART',   'Arts, Photography');


-- books  
insert into a_bkinfo.books values (1101,  'Programming SQL Server with VB.NET',              9000, 2002, '0735615357',    300, 59.99);
insert into a_bkinfo.books values (1102,  'Practical Standards for VB.NET',                  9000, 2003, '0735613568',    250, 49.99);
insert into a_bkinfo.books values (1103,  'Selected Poems',                                  9456, 1949,  null,           125, 12.00);
insert into a_bkinfo.books values (1104,  'Sibley Guide to Bird Life and Behavior',          9102, 2001, '0679451234',    604, 45.00);
insert into a_bkinfo.books values (1105,  'SQL:1999 Relational Language Concepts',           9745, 2002, '1558604561',    450, 59.95);
insert into a_bkinfo.books values (1106,  'SQL for Smarties',                                9745, 1995, '1558603239',    250, 29.00);
insert into a_bkinfo.books values (1107,  'SQL Puzzles and Answers',                         9745, 1997, '1558604537',    325, 25.00);
insert into a_bkinfo.books values (1108,  'Database Systems',                                9325, 1996,  null,           680, 39.95);
insert into a_bkinfo.books values (1109,  'Intro to DB Systems-7th Ed',                      9325, 2000, '0201385902',    650, 80.00);
insert into a_bkinfo.books values (1110,  'Adv SQL:1999 Object_Relational Features',         9745, 2002, '1558606077',    520, 59.95);


insert into a_bkinfo.books values (1128,  'Temporal Data and the Relational Model',          9325, 2003, 'na',            275, 49.95);
insert into a_bkinfo.books values (1133,  'Leaves of Grass',                                 9623, 1902,  null,           125, 19.95);
insert into a_bkinfo.books values (1142,  'Relational Database Theory',                      9521, 1993,  null,           879, 95.00);
insert into a_bkinfo.books values (1161,  'SQL Programming Style',                           9745, 2005, '0120887975',    780, 35.00);
insert into a_bkinfo.books values (1162,  'Trees and Hierarchies',                           9745, 2004, '1558609202',    350, 35.00);
insert into a_bkinfo.books values (1180,  'MySQL Database Design and Tuning',                9825, 2005, '9780672234650', 400, 49.99);
insert into a_bkinfo.books values (1175,  'MySQL in a Nutshell',                             9822, 2008, '9780596514331', 538, 34.99);
insert into a_bkinfo.books values (1182,  'MySQL Cookbook',                                  9822, 2007, '9780596527082', 918, 49.99);
insert into a_bkinfo.books values (1185,  'MySQL Stored Procedures',                         9822, 2007, '9780596100896', 595, 49.99);
insert into a_bkinfo.books values (1184,  'MySQL Developer''s Library',                      9325, 2009, '9780672329388', 650, 49.99);


insert into a_bkinfo.books values (1301,  'ADO and Oracle Workbook',                         9000, 2002, '0265615357',      0, 59.99);
insert into a_bkinfo.books values (1302,  'ADO: the ebook',                                  9000, 2002, '0852515358',   null, 49.99);
insert into a_bkinfo.books values (1303,  'Rainbows and Rainbows',                           9521, 2002, '0657895157',   null, 59.99);
insert into a_bkinfo.books values (1304,  'Stories of Discoveries',                          9325, 2002, '0777788887',    300, 59.99);
insert into a_bkinfo.books values (1305,  'Journeys Through Flatland',                       9325, 1958, '0387515357',    100,  9.99);
insert into a_bkinfo.books values (1306,  'Myths of SQL',                                    9664, 2000, '0454615027',   2895,259.99);
insert into a_bkinfo.books values (1188,  'SQL for MySQL Developers',                        9325, 2007, '9780314973851', 105, 49.99);
insert into a_bkinfo.books values (1199,  'SQL is Fun',                                      null, 2007,  null,            98, 19.99);
insert into a_bkinfo.books values (2001,  'Programming SQL Server 2005',                     9822, 2006, '0596003216',    675, 49.99);
insert into a_bkinfo.books values (2002,  'SQL Server 2005 A Beginner''s Guide',             9030, 2006, '0072260939',    402, 39.99);


insert into a_bkinfo.books values (2003,  'SQL Server 2005 Developer''s Guide',              9030, 2006, '0072260998',    402, 49.99);
insert into a_bkinfo.books values (2004,  'SQL Server 2005 Stored Procedure Prg',            9030, 2006, '0072262888',    399, 59.99);
insert into a_bkinfo.books values (2005,  'Developer''s Guide to SQL Server 2005',           9325, 2006, '0321382188',    894, 59.99);
insert into a_bkinfo.books values (2006,  'T_SQL Programming (Inside series)',               9000, 2006, '9780756978',    390, 44.99);
insert into a_bkinfo.books values (2007,  'T_SQL Querying (Inside series)',                  9000, 2006, '9780733132',    391, 44.99);
insert into a_bkinfo.books values (2008,  'SQL Server 2005 T_Sql Recipies',                  9444, 2006, '159059570X',    503, 59.99);
insert into a_bkinfo.books values (2009,  'SQL Server 2005 Express Edition',                 9664, 2006, '0764589237',    150, 29.99);
insert into a_bkinfo.books values (1258,  '.Net Development for Microsoft Office',           9000, 2005, '0735621322',    500, 49.99);
insert into a_bkinfo.books values (1689,  'Programming Visual Basic 2005: The Language',     9000, 2006, '9780735621831', 980, 59.99);
insert into a_bkinfo.books values (1678,  'Pro .NET 2.0 Windows Forms and Controls VB 2005', 9444, 2006, '1590959693',   1002, 49.99);


insert into a_bkinfo.books values (1278,  'Beginning VB 2008 Databases',                     9444, 2008, '9781590599471', 408, 44.99);
insert into a_bkinfo.books values (1478,  'Beginning OO Programming with VB 2005',           9444, 2006, '1590597695',    368, 44.99);
insert into a_bkinfo.books values (1894,  'Programming Visual Basic 2005',                   9822, 2005, '0596009496',    548, 39.99);
insert into a_bkinfo.books values (1279,  'Data-Driven Services with Silverlight 2',         9822, 2009, '9780596523091', 336, 44.99);
insert into a_bkinfo.books values (1776,  'Doing Objects in Visual Basic 2005',              9325, 2007, '9780321320490', 500, 49.99);
insert into a_bkinfo.books values (1948,  'Framework Design Guidelines',                     9325, 2006, '0321246756',    346, 44.99);
insert into a_bkinfo.books values (1077,  'Programming for Poets',                           9456, 2009, null,            401, 40.25);
insert into a_bkinfo.books values (1835,  'Data Binding with Windows Forms 2.0',             9325, 2006, '032126892X',    634, 49.99);
insert into a_bkinfo.books values (1677,  'Windows Forms 2.0 Programming',                   9325, 2006, '0321267966',    982, 74.99);
insert into a_bkinfo.books values (1670,  'Applied .NET Framework Programming VB.NET',       9000, 2003, '0735678772',    608, 49.99);


insert into a_bkinfo.books values (1541,  'Freethinkers: A History of American Secularism',  9023, 2004, '9780805077766', 448, 12.79);
insert into a_bkinfo.books values (1542,  'The Great Agnostic: Robert Ingersoll and American Freethought',  
        9021, 2013, '9780300137255', 256, 16.99);
insert into a_bkinfo.books values (1543,  'Ties That Bind:The Story of an Afro-Cherokee Family in Slavery and Freedom',  
        9024, 2006, '9780520250024', 327, 26.96);
insert into a_bkinfo.books values (1544,  'The House on Diamond Hill: A Cherokee Plantation Story',  
        9024, 2012, '9780807872673', 336, 17.76);
insert into a_bkinfo.books values (1545,  'Team of Rivals: The Political Genius of Abraham Lincoln',  
        9776, 2006, '9780739469767', 944, 13.96);
insert into a_bkinfo.books values (1546,  'The Johnstown Flood',                             9776, 1987, '9780671207144', 304, 10.39);
insert into a_bkinfo.books values (1401,  'Visual Studio Tools for Office',                  9325, 2006, '0321334884',    976, 54.99);
insert into a_bkinfo.books values (1537,  'The BedSide Book of Birds',                       9725, 2005, '0385514832',     68, 29.95);
insert into a_bkinfo.books values (1357,  'Why Birds Sing',                                  9725, 2005, '046507135X',    240, 26.00);
insert into a_bkinfo.books values (1609,  'In the Company of Crows and Ravens',              9725, 2005, '0300100760',    376, 18.95);


insert into a_bkinfo.books values (1979,  'Pro VB 2008 and the .NET 3.5 Platform',           9444, 2008, '9781590598221',1368, 59.99);
insert into a_bkinfo.books values (1457,  'Visual Basic 2008 Recipes',                       9444, 2008, '9781590599709', 300, 79.99);
insert into a_bkinfo.books values (1425,  'The Singing Life of Birds',                       9561, 2005, '0618405682',    468, 28.09);
insert into a_bkinfo.books values (1978,  'Acoustic Communication in Birds Vol1',            9561, 1983, '9780124268012', 360,103.91);
insert into a_bkinfo.books values (1621,  'The Unfeathered Bird',                            9020, 2013, '9780691151342', 304, 31.29);
insert into a_bkinfo.books values (1622,  'Bird Sense',                                      9020, 2012, '9780802779663', 265, 25.00);
insert into a_bkinfo.books values (1623,  'Lichens of North America',                        9021, 2001, '9780300082494', 828,135.00);
insert into a_bkinfo.books values (1624,  'Outstanding Mosses and Liverworts of Pennsylvania and Nearby States',             
        9021, 2006, '9780976092575',9, 19.99);
insert into a_bkinfo.books values (1626,  'Bark: A Field Guide to Trees of the Northeast',   9021, 2011, '9781584658528', 280, 25.95);
insert into a_bkinfo.books values (1625,  'Winter Weed Finder: A Guide to Dry Plants in Winter (Nature Study Guides)',              
        9021, 1989, '9780912550176',  64,  4.95);																					

		
insert into a_bkinfo.books values (1627,  'The Ants',                                        9022, 1990, '9780674040755', 732,120.18);
insert into a_bkinfo.books values (1628,  'The Superorganism:The Beauty, Elegance, Strangeness of Insect Societies', 
       9902, 2008, '9780393067040', 544, 34.65);
insert into a_bkinfo.books values (1629,  'The Leafcutter Ants: Civilization by Instinct',   9022, 1990, '9780393338683', 160, 19.95);
insert into a_bkinfo.books values (1630,  'The Social Conquest of Earth',                    9022, 2012, '9780871404138', 352, 27.95);
insert into a_bkinfo.books values (1602,  'Goblin Market and Other Poems',                   9022, 2012, '9780486280554', 68,   2.95);
insert into a_bkinfo.books values (1448,  'Backyard Birdsong Guide: Western North America',  9561, 2008, '9780811863971',3192, 29.99);
insert into a_bkinfo.books values (1877,  'High Performance MySQL',                          9822, 2008, '9780596101718', 708, 49.99);
insert into a_bkinfo.books values (1200,  'The Mismeasure of Man',                           9902, 1996, '9780393314250', 488, 17.95);
insert into a_bkinfo.books values (1245,  'A Scientific Approach to SQL Testing',            9902, 2010, '9780366214250', 488, 52.95);
insert into a_bkinfo.books values (1774,  'Ever Since Darwin',                               9902, 1992, '9780393308181', 288, 15.95);


insert into a_bkinfo.books values (1234,  'Hen''s Teeth and Horse''s Toes ',                 9902, 1994, '9780393311037', 416, 17.95);
insert into a_bkinfo.books values (1269,  'Querying XML',                                    9745, 2006, '9781558607118', 848, 63.95);
insert into a_bkinfo.books values (1525,  'Interface-Oriented Design',                       9725, 2006, '0976697050',    213, 29.99);
insert into a_bkinfo.books values (1619,  'The Oject-Oriented Thought Process',              9725, 2004, '9780672326110', 158, 29.99);
insert into a_bkinfo.books values (1483,  'Programming with XML',                            9745, 2008, null,            125, 19.99);
insert into a_bkinfo.books values (2017,  'Functional Programming',                          9528, 2010, '9781933988924', 528, 49.99);
insert into a_bkinfo.books values (2018,  'Oracle Database 11g SQL',                         9030, 2008, '9780071498500', 650, 49.99);
insert into a_bkinfo.books values (2025,  'Oracle SQL Fundamentals I Exam Guide',            9030, 2008, '9780071597869', 572, 59.99);
insert into a_bkinfo.books values (2027,  'Mastering Oracle SQL and SQL-Plus',               9444, 2005, '9781590594487', 464, 39.99);
insert into a_bkinfo.books values (2028,  'Mastering Oracle Databases',                      9444, 2010, '9781599594487', 464, 59.99);


insert into a_bkinfo.books values (2029,  'The Forgotten Bird Strikes Back ',                9030, 2010, '9091599594487',   5,  1.99);
insert into a_bkinfo.books values (2031,  'Comparative SQL',                                 9444, 2013, '9781599591237', 750, 99.99);
insert into a_bkinfo.books values (2032,  'Oracle and the rest of the world',                9030, 2013, '9091599593217', 250, 55.99);
insert into a_bkinfo.books values (2622,  'Outstanding Bryophytes',                          9021, 2013, null,956, 89.99);
insert into a_bkinfo.books values (2623,  'Hornworts and Liverworts in your Garden ',        9021, 2013, null,501, 29.99);


-- book topics
Insert into a_bkinfo.book_topics values  (1602, 'POE');
Insert into a_bkinfo.book_topics values  (2018, 'ORA');
Insert into a_bkinfo.book_topics values  (2018, 'SQL');
Insert into a_bkinfo.book_topics values  (2025, 'ORA');
Insert into a_bkinfo.book_topics values  (2025, 'SQL');
Insert into a_bkinfo.book_topics values  (2027, 'ORA');
Insert into a_bkinfo.book_topics values  (2027, 'SQL');
Insert into a_bkinfo.book_topics values  (1101, 'VB');
Insert into a_bkinfo.book_topics values  (1101, 'SSRV');
Insert into a_bkinfo.book_topics values  (1101, 'NET');
Insert into a_bkinfo.book_topics values  (1102, 'VB');
Insert into a_bkinfo.book_topics values  (1102, 'NET');
Insert into a_bkinfo.book_topics values  (1103, 'POE');
Insert into a_bkinfo.book_topics values  (1104, 'SCI');
Insert into a_bkinfo.book_topics values  (1105, 'SQL');


Insert into a_bkinfo.book_topics values  (1105, 'DB');
Insert into a_bkinfo.book_topics values  (1106, 'SQL');
Insert into a_bkinfo.book_topics values  (1107, 'SQL');
Insert into a_bkinfo.book_topics values  (1108, 'DB');
Insert into a_bkinfo.book_topics values  (1109, 'DB');
Insert into a_bkinfo.book_topics values  (1110, 'SQL');
Insert into a_bkinfo.book_topics values  (1110, 'DB');
Insert into a_bkinfo.book_topics values  (1128, 'DB');
Insert into a_bkinfo.book_topics values  (1128, 'SQL');
Insert into a_bkinfo.book_topics values  (1133, 'POE');
Insert into a_bkinfo.book_topics values  (1142, 'DB');
Insert into a_bkinfo.book_topics values  (1161, 'SQL');
Insert into a_bkinfo.book_topics values  (1301, 'ORA');
Insert into a_bkinfo.book_topics values  (1301, 'ADO');
Insert into a_bkinfo.book_topics values  (1302, 'ADO');
Insert into a_bkinfo.book_topics values  (1303, 'SCI');
Insert into a_bkinfo.book_topics values  (1303, 'POE');
Insert into a_bkinfo.book_topics values  (1304, 'SCI');


Insert into a_bkinfo.book_topics values  (1304, 'FCT');
Insert into a_bkinfo.book_topics values  (1304, 'POE');
Insert into a_bkinfo.book_topics values  (1306, 'FCT');
Insert into a_bkinfo.book_topics values  (1306, 'SQL');
Insert into a_bkinfo.book_topics values  (1162, 'SQL');
Insert into a_bkinfo.book_topics values  (1180, 'DB');
Insert into a_bkinfo.book_topics values  (1180, 'MySQL');
Insert into a_bkinfo.book_topics values  (1175, 'MySQL');
Insert into a_bkinfo.book_topics values  (1175, 'SQL');
Insert into a_bkinfo.book_topics values  (1182, 'MySQL');
Insert into a_bkinfo.book_topics values  (1182, 'SQL');
Insert into a_bkinfo.book_topics values  (1185, 'MySQL');
Insert into a_bkinfo.book_topics values  (1185, 'SQL');
Insert into a_bkinfo.book_topics values  (1184, 'MySQL');
Insert into a_bkinfo.book_topics values  (1184, 'SQL');
Insert into a_bkinfo.book_topics values  (1188, 'MySQL');
Insert into a_bkinfo.book_topics values  (1188, 'SQL');
Insert into a_bkinfo.book_topics values  (2001, 'SSRV');


Insert into a_bkinfo.book_topics values  (2002, 'SSRV');
Insert into a_bkinfo.book_topics values  (2002, 'SQL');
Insert into a_bkinfo.book_topics values  (2003, 'SSRV');
Insert into a_bkinfo.book_topics values  (2003, 'SQL');
Insert into a_bkinfo.book_topics values  (2004, 'SSRV');
Insert into a_bkinfo.book_topics values  (2004, 'SQL');
Insert into a_bkinfo.book_topics values  (2005, 'SSRV');
Insert into a_bkinfo.book_topics values  (2005, 'SQL');
Insert into a_bkinfo.book_topics values  (2006, 'SSRV');
Insert into a_bkinfo.book_topics values  (2006, 'SQL');
Insert into a_bkinfo.book_topics values  (2007, 'SSRV');
Insert into a_bkinfo.book_topics values  (2007, 'SQL');
Insert into a_bkinfo.book_topics values  (2008, 'SSRV');
Insert into a_bkinfo.book_topics values  (2008, 'SQL');
Insert into a_bkinfo.book_topics values  (2009, 'SSRV');
Insert into a_bkinfo.book_topics values  (2009, 'SQL');
Insert into a_bkinfo.book_topics values  (1245, 'SQL');
Insert into a_bkinfo.book_topics values  (1245, 'DB');


Insert into a_bkinfo.book_topics values  (1234, 'SCI');
Insert into a_bkinfo.book_topics values  (1774, 'SCI');
Insert into a_bkinfo.book_topics values  (1200, 'SCI');
Insert into a_bkinfo.book_topics values  (1877, 'MySQL');
Insert into a_bkinfo.book_topics values  (1269, 'XML');
Insert into a_bkinfo.book_topics values  (1483, 'SQL');
Insert into a_bkinfo.book_topics values  (1483, 'XML');
Insert into a_bkinfo.book_topics values  (1483, 'PGM');
Insert into a_bkinfo.book_topics values  (1619, 'PGM');
Insert into a_bkinfo.book_topics values  (1525, 'PGM');
Insert into a_bkinfo.book_topics values  (1258, 'NET');
Insert into a_bkinfo.book_topics values  (1689, 'NET');
Insert into a_bkinfo.book_topics values  (1689, 'VB');
Insert into a_bkinfo.book_topics values  (1678, 'NET');
Insert into a_bkinfo.book_topics values  (1678, 'VB');
Insert into a_bkinfo.book_topics values  (1278, 'NET');
Insert into a_bkinfo.book_topics values  (1278, 'SSRV');
Insert into a_bkinfo.book_topics values  (1278, 'DB');


Insert into a_bkinfo.book_topics values  (1278, 'VB');
Insert into a_bkinfo.book_topics values  (1478, 'VB');
Insert into a_bkinfo.book_topics values  (1894, 'VB');
Insert into a_bkinfo.book_topics values  (1279, 'NET');
Insert into a_bkinfo.book_topics values  (1279, 'VB');
Insert into a_bkinfo.book_topics values  (1948, 'NET');
Insert into a_bkinfo.book_topics values  (1835, 'NET');
Insert into a_bkinfo.book_topics values  (1677, 'NET');
Insert into a_bkinfo.book_topics values  (1670, 'NET');
Insert into a_bkinfo.book_topics values  (1670, 'VB');
Insert into a_bkinfo.book_topics values  (1401, 'NET');
Insert into a_bkinfo.book_topics values  (1077, 'PGM');
Insert into a_bkinfo.book_topics values  (1077, 'POE');
Insert into a_bkinfo.book_topics values  (1457, 'VB');
Insert into a_bkinfo.book_topics values  (1979, 'VB');
Insert into a_bkinfo.book_topics values  (1979, 'NET');
Insert into a_bkinfo.book_topics values  (1630, 'SCI');
Insert into a_bkinfo.book_topics values  (1629, 'SCI');


Insert into a_bkinfo.book_topics values  (1609, 'SCI');
Insert into a_bkinfo.book_topics values  (1357, 'SCI');
Insert into a_bkinfo.book_topics values  (1537, 'SCI');
Insert into a_bkinfo.book_topics values  (1425, 'SCI');
Insert into a_bkinfo.book_topics values  (1978, 'SCI');
Insert into a_bkinfo.book_topics values  (1448, 'SCI');
Insert into a_bkinfo.book_topics values  (2029, 'FCT');
Insert into a_bkinfo.book_topics values  (2029, 'HIST'); 
Insert into a_bkinfo.book_topics values  (2028, 'ORA');
Insert into a_bkinfo.book_topics values  (2028, 'MySQL'); 
Insert into a_bkinfo.book_topics values  (1628, 'SCI');
Insert into a_bkinfo.book_topics values  (1627, 'SCI');
Insert into a_bkinfo.book_topics values  (1626, 'SCI');
Insert into a_bkinfo.book_topics values  (1625, 'SCI');
Insert into a_bkinfo.book_topics values  (1624, 'SCI');
Insert into a_bkinfo.book_topics values  (1623, 'SCI');
Insert into a_bkinfo.book_topics values  (1622, 'SCI');
Insert into a_bkinfo.book_topics values  (1621, 'SCI');


Insert into a_bkinfo.book_topics values  (1621, 'ART');
Insert into a_bkinfo.book_topics values  (2031, 'ORA');
Insert into a_bkinfo.book_topics values  (2031, 'SQL');
Insert into a_bkinfo.book_topics values  (2031, 'SSRV');
Insert into a_bkinfo.book_topics values  (2032, 'ORA');
Insert into a_bkinfo.book_topics values  (2032, 'DB');
Insert into a_bkinfo.book_topics values  (1541, 'HIST');
Insert into a_bkinfo.book_topics values  (1542, 'HIST');
Insert into a_bkinfo.book_topics values  (1543, 'HIST');
Insert into a_bkinfo.book_topics values  (1544, 'HIST');
Insert into a_bkinfo.book_topics values  (1545, 'HIST');
Insert into a_bkinfo.book_topics values  (1546, 'HIST');


-- authors  
insert into a_bkinfo.authors values ('Paolo', 'Atzeni', 'A0110');
insert into a_bkinfo.authors values ('Francesco',  'Balena', 'B2010');
insert into a_bkinfo.authors values ('Joe', 'Celko', 'C0030');
insert into a_bkinfo.authors values ('C.J.', 'Date', 'D0030');
insert into a_bkinfo.authors values ('Valeria', 'Deantonellis', 'D0050');
insert into a_bkinfo.authors values ('Alligator', 'Descartes', 'D0070');
insert into a_bkinfo.authors values ('High', 'Darwin', 'D2340');
insert into a_bkinfo.authors values ('Rick', 'Dobson', 'D3040');
insert into a_bkinfo.authors values ('Hermann', 'Hesse', 'H0070');
insert into a_bkinfo.authors values ('Michael', 'Irwin', 'I0010');
insert into a_bkinfo.authors values ('Nikos', 'Lorentzos', 'L0040');
insert into a_bkinfo.authors values ('Audre', 'Lorde', 'L0130');
insert into a_bkinfo.authors values ('Alden', 'Lorents', 'L0140');
insert into a_bkinfo.authors values ('Jim', 'Melton', 'M0053');
insert into a_bkinfo.authors values ('James', 'Morgan', 'M0110');
insert into a_bkinfo.authors values ('Joline', 'Morrison', 'M0150');
insert into a_bkinfo.authors values ('Jeffrey', 'Richter', 'R2040');
insert into a_bkinfo.authors values ('David Allen', 'Sibley', 'S0025');
insert into a_bkinfo.authors values ('Walt', 'Whitman', 'W0030');
insert into a_bkinfo.authors values ('William Carlos', 'Williams', 'W0060');
insert into a_bkinfo.authors values ('Katrina','van Grouw','V1144');
insert into a_bkinfo.authors values ('Tim','Birkhead','B1144');
insert into a_bkinfo.authors values ('Susan','Munch','M2475');
insert into a_bkinfo.authors values ('Irwin','Brodo','B1244');
insert into a_bkinfo.authors values ('Sylvia','Sharnoff','S2144');
insert into a_bkinfo.authors values ('Stephan','Sharnoff','S2145');
insert into a_bkinfo.authors values ('Michael','Wojtech','W5145');
insert into a_bkinfo.authors values ('Dorcas','Miller','M3145');
insert into a_bkinfo.authors values ('Donald','Miller','M3154');
insert into a_bkinfo.authors values ('Lance','Delano','D0845');
insert into a_bkinfo.authors values ('Joseph', 'Sack','S0205');
insert into a_bkinfo.authors values ('Itzik','Ben-Gan','B1112');
insert into a_bkinfo.authors values ('Lubor','Kollar','K2002');
insert into a_bkinfo.authors values (null,'Prince','P3002');
insert into a_bkinfo.authors values ('Dejan','Sarka','S2178');
insert into a_bkinfo.authors values ('Bob','Beauchemin','B2078');
insert into a_bkinfo.authors values ('Dan','Sullivan','S2183');
insert into a_bkinfo.authors values ('Dejan','Sunderic','S2789');
insert into a_bkinfo.authors values ('Michael','Otey','O0345') ;
insert into a_bkinfo.authors values ('Denielle','Otey','O0346');
insert into a_bkinfo.authors values ('Dusan','Petkovic','P2308');
insert into a_bkinfo.authors values ('Bill','Hamilton','H2987');
insert into a_bkinfo.authors values ('Cruela', 'de Vil', 'D2110');
insert into a_bkinfo.authors values ('Willie', 'Mammoth', 'M3110');
insert into a_bkinfo.authors values ('Bill', 'Shredder', 'S3110');
insert into a_bkinfo.authors values ('Pete', 'Moss', 'M4540');
insert into a_bkinfo.authors values ('Terry', 'Incognito', 'I5110');
insert into a_bkinfo.authors values ('Joseph', 'Sack','S0250');
insert into a_bkinfo.authors values ('Rajesh', 'George','G4040');
insert into a_bkinfo.authors values ('Robert', 'Schneider', 'S1164');
insert into a_bkinfo.authors values ('Russel', 'Dyer', 'D8902');
insert into a_bkinfo.authors values ('Jason', 'Price', 'P6030');
insert into a_bkinfo.authors values ('Lex', 'de Haan', 'D6290');
insert into a_bkinfo.authors values ('Roopesh', 'Ramklass', 'R0700');
insert into a_bkinfo.authors values ('John', 'Watson', 'W4512');
insert into a_bkinfo.authors values ('Paul','DuBois','D8956');
insert into a_bkinfo.authors values ('Guy','Harrison','H0202');
insert into a_bkinfo.authors values ('Steven','Feuerstein','F2987');
insert into a_bkinfo.authors values ('Rick','van der Lans','L0453');
insert into a_bkinfo.authors values ('Andrew', 'Whitechapel', 'W0078');
insert into a_bkinfo.authors values ('Matthew', 'MacDonald', 'M0157');
insert into a_bkinfo.authors values ('Vidya Vrat', 'Agarwal', 'A5748');
insert into a_bkinfo.authors values ('James', 'Huddleston', 'H8972');
insert into a_bkinfo.authors values ('Daniel', 'Clark', 'C5820');
insert into a_bkinfo.authors values ('Jesse', 'Liberty', 'L0245');
insert into a_bkinfo.authors values ('John', 'Papa', 'P0500');
insert into a_bkinfo.authors values ('Krzysztof', 'Cwalina', 'C8794');
insert into a_bkinfo.authors values ('Brad', 'Abrams', 'A0094');
insert into a_bkinfo.authors values ('Debra', 'Kutata', 'K7845');
insert into a_bkinfo.authors values ('Brain', 'Noyes', 'N6457');
insert into a_bkinfo.authors values ('Chris', 'Sells', 'S2548');
insert into a_bkinfo.authors values ('Michael', 'Weinhardt', 'W2388');
insert into a_bkinfo.authors values ('Eric', 'Lippert', 'L3001');
insert into a_bkinfo.authors values ('Rakesh', 'Rajan', 'R0040');
insert into a_bkinfo.authors values ('Allen', 'Jones', 'J6700');
insert into a_bkinfo.authors values ('Todd', 'Herman', 'H0187');
insert into a_bkinfo.authors values ('Eric', 'Carter', 'C0844');
insert into a_bkinfo.authors values ('David', 'Rothenberg', 'R5858');
insert into a_bkinfo.authors values ('Christina', 'Rossetti', 'R5808');
insert into a_bkinfo.authors values ('Susan','Jackoby','J8845');
insert into a_bkinfo.authors values ('Tiya','Miles','M0295');
insert into a_bkinfo.authors values ('David','McCullough','M3200');
insert into a_bkinfo.authors values ('Doris Kearns','Goodwin','G8495');
insert into a_bkinfo.authors values ('John', 'Marzluff', 'M0024');
insert into a_bkinfo.authors values ('Tony', 'Angell', 'A7745');
insert into a_bkinfo.authors values ('Andrew', 'Troelsen', 'T6789');
insert into a_bkinfo.authors values ('Donald', 'Kroodsma', 'K7620');
insert into a_bkinfo.authors values ('Stephen Jay', 'Gould', 'G5050');
insert into a_bkinfo.authors values ('Peter', 'Zaitsev', 'Z0878');
insert into a_bkinfo.authors values ('Vadim', 'Tkaechenko', 'T6748');
insert into a_bkinfo.authors values ('Jeremy', 'Zawodny', 'Z0897');
insert into a_bkinfo.authors values ('Arjen', 'Lentz', 'L2444');
insert into a_bkinfo.authors values ('Derek', 'Balling', 'B0056');
insert into a_bkinfo.authors values ('Ken', 'Pugh', 'P7477');
insert into a_bkinfo.authors values ('Matt', 'Weisfeld', 'W3433');
insert into a_bkinfo.authors values ('Baron', 'Schwartz', 'S1900');
insert into a_bkinfo.authors values ('Graeme', 'Gibson', 'G4748');
insert into a_bkinfo.authors values ('Bert','Holldobler','H3145');
insert into a_bkinfo.authors values ('E.O.','Wilson','W3145');


-- book_authors 
insert into a_bkinfo.book_authors  values (1101, 'D3040', 1);
insert into a_bkinfo.book_authors  values (1102, 'B2010', 1);
insert into a_bkinfo.book_authors  values (1102, 'R2040', 2);
insert into a_bkinfo.book_authors  values (1104, 'S0025', 1);
insert into a_bkinfo.book_authors  values (1105, 'M0053', 1);
insert into a_bkinfo.book_authors  values (1106, 'C0030', 1);
insert into a_bkinfo.book_authors  values (1107, 'C0030', 1);
insert into a_bkinfo.book_authors  values (1108, 'L0140', 1);
insert into a_bkinfo.book_authors  values (1108, 'M0110', 2);
insert into a_bkinfo.book_authors  values (1109, 'D0030', 1);
insert into a_bkinfo.book_authors  values (1109, 'I0010', 2);
insert into a_bkinfo.book_authors  values (1109, 'W0060', 3);
insert into a_bkinfo.book_authors  values (1110, 'M0053', 1);
insert into a_bkinfo.book_authors  values (1128, 'D0030', 1);
insert into a_bkinfo.book_authors  values (1128, 'D2340', 2);
insert into a_bkinfo.book_authors  values (1128, 'L0040', 3);
insert into a_bkinfo.book_authors  values (1128, 'M0150', 4);
insert into a_bkinfo.book_authors  values (1133, 'W0030', 1);
insert into a_bkinfo.book_authors  values (1142, 'A0110', 1);
insert into a_bkinfo.book_authors  values (1142, 'D0050', 2);
insert into a_bkinfo.book_authors  values (1161, 'C0030', 1);
insert into a_bkinfo.book_authors  values (1162, 'C0030', 1);
insert into a_bkinfo.book_authors  values (1175, 'D8956', 1);
insert into a_bkinfo.book_authors  values (1180, 'S1164', 1);
insert into a_bkinfo.book_authors  values (1182, 'D8902', 1);
insert into a_bkinfo.book_authors  values (1184, 'D8956', 1);
insert into a_bkinfo.book_authors  values (1185, 'H0202', 1);
insert into a_bkinfo.book_authors  values (1185, 'F2987', 2);
insert into a_bkinfo.book_authors  values (1301, 'D2110', 1);
insert into a_bkinfo.book_authors  values (1302, 'M3110', 1);
insert into a_bkinfo.book_authors  values (1303, 'M3110', 1);
insert into a_bkinfo.book_authors  values (1304, 'D2110', 1);
insert into a_bkinfo.book_authors  values (1305, 'S3110', 1);
insert into a_bkinfo.book_authors  values (1306, 'S3110', 1);
insert into a_bkinfo.book_authors  values (1188, 'L0453', 1);
insert into a_bkinfo.book_authors  values (2009, 'G4040', 1);
insert into a_bkinfo.book_authors  values (2009, 'D0845', 2);
insert into a_bkinfo.book_authors  values (2008, 'S0205', 1);
insert into a_bkinfo.book_authors  values (2007, 'B1112', 1);
insert into a_bkinfo.book_authors  values (2007, 'K2002', 2);
insert into a_bkinfo.book_authors  values (2007, 'S2178', 3);
insert into a_bkinfo.book_authors  values (2006, 'B1112', 1);
insert into a_bkinfo.book_authors  values (2006, 'K2002', 3);
insert into a_bkinfo.book_authors  values (2006, 'S2178', 2);
insert into a_bkinfo.book_authors  values (2005, 'B2078', 1);
insert into a_bkinfo.book_authors  values (2005, 'S2183', 2);
insert into a_bkinfo.book_authors  values (2004, 'S2789', 1);
insert into a_bkinfo.book_authors  values (2003, 'O0345', 1);
insert into a_bkinfo.book_authors  values (2003, 'O0346', 2);
insert into a_bkinfo.book_authors  values (2002, 'P2308', 1);
insert into a_bkinfo.book_authors  values (2001, 'H2987', 1);
insert into a_bkinfo.book_authors  values (1602, 'R5808', 1);
insert into a_bkinfo.book_authors  values (1258, 'W0078', 1);
insert into a_bkinfo.book_authors  values (1689, 'B2010', 1);
insert into a_bkinfo.book_authors  values (1678, 'M0157', 1);
insert into a_bkinfo.book_authors  values (1278, 'A5748', 1);
insert into a_bkinfo.book_authors  values (1278, 'H8972', 2);
insert into a_bkinfo.book_authors  values (1478, 'C5820', 1);
insert into a_bkinfo.book_authors  values (1894, 'L0245', 1);
insert into a_bkinfo.book_authors  values (1279, 'P0500', 1);
insert into a_bkinfo.book_authors  values (1279, 'K7845', 2);
insert into a_bkinfo.book_authors  values (1948, 'C8794', 1);
insert into a_bkinfo.book_authors  values (1948, 'A0094', 2);
insert into a_bkinfo.book_authors  values (1835, 'N6457', 1);
insert into a_bkinfo.book_authors  values (1677, 'S2548', 1);
insert into a_bkinfo.book_authors  values (1677, 'W2388', 2);
insert into a_bkinfo.book_authors  values (1670, 'R2040', 1);
insert into a_bkinfo.book_authors  values (1670, 'B2010', 2);
insert into a_bkinfo.book_authors  values (1401, 'C0844', 1);
insert into a_bkinfo.book_authors  values (1401, 'L3001', 2);
insert into a_bkinfo.book_authors  values (1457, 'H0187', 1);
insert into a_bkinfo.book_authors  values (1457, 'J6700', 2);
insert into a_bkinfo.book_authors  values (1457, 'M0157', 3);
insert into a_bkinfo.book_authors  values (1457, 'R0040', 4);
insert into a_bkinfo.book_authors  values (1979, 'T6789', 1);
insert into a_bkinfo.book_authors  values (1609, 'M0024', 1);
insert into a_bkinfo.book_authors  values (1609, 'A7745', 2);
insert into a_bkinfo.book_authors  values (1357, 'R5858', 1);
insert into a_bkinfo.book_authors  values (1537, 'G4748', 1);
insert into a_bkinfo.book_authors  values (1541, 'J8845', 1);
insert into a_bkinfo.book_authors  values (1542, 'J8845', 1);
insert into a_bkinfo.book_authors  values (1543, 'M0295', 1);
insert into a_bkinfo.book_authors  values (1544, 'M0295', 1);
insert into a_bkinfo.book_authors  values (1545, 'G8495', 1);
insert into a_bkinfo.book_authors  values (1546, 'M3200', 1);
insert into a_bkinfo.book_authors  values (1425, 'K7620', 1);
insert into a_bkinfo.book_authors  values (1448, 'K7620', 1);
insert into a_bkinfo.book_authors  values (1978, 'K7620', 1);
insert into a_bkinfo.book_authors  values (1200, 'G5050', 1);
insert into a_bkinfo.book_authors  values (1774, 'G5050', 1);
insert into a_bkinfo.book_authors  values (1234, 'G5050', 1);
insert into a_bkinfo.book_authors  values (1877, 'S1900', 1);
insert into a_bkinfo.book_authors  values (1877, 'Z0878', 2);
insert into a_bkinfo.book_authors  values (1877, 'T6748', 3);
insert into a_bkinfo.book_authors  values (1877, 'Z0897', 4);
insert into a_bkinfo.book_authors  values (1877, 'L2444', 5);
insert into a_bkinfo.book_authors  values (1877, 'B0056', 6);
insert into a_bkinfo.book_authors  values (1269, 'M0053', 1);
insert into a_bkinfo.book_authors  values (1619, 'W3433', 1);
insert into a_bkinfo.book_authors  values (1525, 'P7477', 1);
insert into a_bkinfo.book_authors  values (2018, 'P6030', 1);
insert into a_bkinfo.book_authors  values (2025, 'D6290', 1);
insert into a_bkinfo.book_authors  values (2025, 'R0700', 2);
insert into a_bkinfo.book_authors  values (2027, 'W4512', 1);
insert into a_bkinfo.book_authors  values (1627, 'H3145', 1);
insert into a_bkinfo.book_authors  values (1627, 'W3145', 2);
insert into a_bkinfo.book_authors  values (1628, 'H3145', 1);
insert into a_bkinfo.book_authors  values (1628, 'W3145', 2);
insert into a_bkinfo.book_authors  values (1629, 'H3145', 1);
insert into a_bkinfo.book_authors  values (1629, 'W3145', 2);
insert into a_bkinfo.book_authors  values (1630, 'W3145', 1);
insert into a_bkinfo.book_authors  values (1626, 'M3145', 1);
insert into a_bkinfo.book_authors  values (1625, 'W5145', 1);
insert into a_bkinfo.book_authors  values (1623, 'B1244', 1);
insert into a_bkinfo.book_authors  values (1623, 'S2144', 2);
insert into a_bkinfo.book_authors  values (1623, 'S2145', 3);
insert into a_bkinfo.book_authors  values (1624, 'M2475', 1);
insert into a_bkinfo.book_authors  values (1622, 'B1144', 1);
insert into a_bkinfo.book_authors  values (1621, 'V1144', 1);
insert into a_bkinfo.book_authors  values (2031, 'I5110', 1);
insert into a_bkinfo.book_authors  values (2032, 'I5110', 1);
insert into a_bkinfo.book_authors  values (2622, 'M4540', 1);
insert into a_bkinfo.book_authors  values (2623, 'M4540', 1);


-- customers  
insert into a_bkorders.customers  values  (208950, 'Adams', 'Samuel',        'MA', '02106', '1996-04-15' );
insert into a_bkorders.customers  values  (200368, 'Blake', 'William',       'CA', '95959', '1997-07-15' );
insert into a_bkorders.customers  values  (258595, 'Jobs', 'Peter',          'MA', '02575', '1997-01-09' );
insert into a_bkorders.customers  values  (263119, 'Jones', null,            'IL', '62979', '1997-03-02' );
insert into a_bkorders.customers  values  (224038, 'Austin', 'Pat',          'CA', '95900', '1997-08-02' );
insert into a_bkorders.customers  values  (255919, 'Milton', 'John',         'NJ', '08235', '2012-05-31' );
insert into a_bkorders.customers  values  (211483, 'Carroll', 'Lewis',       'CA', '94203', '1998-08-08' );
insert into a_bkorders.customers  values  (221297, 'Dodgson', 'Charles',     'MI', '49327', '2001-05-06' );
insert into a_bkorders.customers  values  (261502, 'Hawthorne', 'Nathaniel', 'MA', '02297', '2001-10-12' );
insert into a_bkorders.customers  values  (212921, 'Books on Tap', NULL,     'CA', '94112', '2002-01-06' );
insert into a_bkorders.customers  values  (260368, 'Muller', 'Jonathan',     'IL', '62885', '2005-12-15' );
insert into a_bkorders.customers  values  (259969, 'Carlsen', 'Benny',       'NJ', '08505', '2012-07-12' );
insert into a_bkorders.customers  values  (239427, 'Marksa', 'Anna',         'NJ', '08495', '2012-02-28' );
insert into a_bkorders.customers  values  (296598, 'Collins', 'Douglas',     'MO', '65836', '2005-04-25' );
insert into a_bkorders.customers  values  (276381, 'Collins', 'Douglas',     'OH', '22451', '2005-02-08' );
insert into a_bkorders.customers  values  (234138, 'Keats', 'John',          'IL', '61500', '2006-04-30' );
insert into a_bkorders.customers  values  (267780, 'Shelly', 'Mary',         'CA', '94100', '2010-10-02' );
insert into a_bkorders.customers  values  (290298, 'Swift', 'Jonathan',      'MI', '49201', '2010-10-12' );
insert into a_bkorders.customers  values  (226656, 'Randall', 'Randell',     'NJ', '08251', '2012-08-08' );
insert into a_bkorders.customers  values  (222477, 'Rossetti', 'Christina',  'MI', '49742', '2012-07-11' );
insert into a_bkorders.customers  values  (227105, 'Kafka', 'Franz',         'MA', '02297', '2010-12-31' );
insert into a_bkorders.customers  values  (202958, 'Denver', null,           'IL', '60405', '2012-01-15' );
insert into a_bkorders.customers  values  (218709, 'Bonnard', 'Paul',        'MA', '02558', '2005-11-15' );
insert into a_bkorders.customers  values  (217796, 'Anders', null,           'IL', '62505', '2012-03-30' );
insert into a_bkorders.customers  values  (272787, 'Carlson', 'Ben',         'IL', '62505', '2012-05-05' );
insert into a_bkorders.customers  values  (234709, 'Brahms', 'Johnnie',      'MA', '02558', '2014-08-15' );
insert into a_bkorders.customers  values  (217002, 'Grieg', 'Edvard',        'IL', '62329', '2014-06-28' );
insert into a_bkorders.customers  values  (272611, 'Jarrett', 'Keith',       'IL', '62329', '2014-07-11' );
insert into a_bkorders.customers  values  (299099, 'Sam', 'Dave',            'CA', '94141', '2012-01-01' );
insert into a_bkorders.customers  values  (259906, 'Capybara', 'Wile E.',    'CA', '94132', '2014-08-05' );
insert into a_bkorders.customers  values  (259907, 'Hedge', 'Mr.',           'CA', '94132', '2012-09-05' );
insert into a_bkorders.customers  values  (282716, 'Biederbecke','Dwight',   'PA', '18106', '2014-01-01' );
insert into a_bkorders.customers  values  (287261, 'Biederbecke','Bix',      'PA', '18106', '2014-08-01' );
insert into a_bkorders.customers  values  (226275, 'Dalrymple','Jack',       'SD', '57216', '2014-01-01' );
insert into a_bkorders.customers  values  (228175, 'Cardin','Benjamin',      'MD', '20609', '2014-04-02' );
insert into a_bkorders.customers  values  (228275, 'Mikulski','Barbara',     'MD', '21203', '2014-04-04' );
insert into a_bkorders.customers  values  (228352, 'Edwards','Donna',        'MD', '21205', '2014-06-08' );


-- ------------------------------------------------------------------
-- orders and  order_details 


-- ------------------------------------------------------------------
 
/* Oct 2013 */

Insert into a_bkorders.order_headers    values(31871,  '2013-10-03', 276381);
   Insert into a_bkorders.order_details values(31871, 1, 1448,  1,  30.00);
   Insert into a_bkorders.order_details values(31871, 2, 1162,  2,  34.95);   
   
Insert into a_bkorders.order_headers    values(31872,  '2013-10-03', 200368);
   Insert into a_bkorders.order_details values(31872, 1, 1448,  100,  30.00);

Insert into a_bkorders.order_headers    values(1563,  '2013-10-03', 222477);
   Insert into a_bkorders.order_details values(1563, 1, 1103,  2,  10.95);
   Insert into a_bkorders.order_details values(1563, 2, 1106,  1,  29.00);
   
Insert into a_bkorders.order_headers    values(1601,  '2013-10-06', 221297);
   Insert into a_bkorders.order_details values(1601, 1, 1107,  1,  22.50);
   Insert into a_bkorders.order_details values(1601, 2, 1483,  5,  18.19);
   Insert into a_bkorders.order_details values(1601, 3, 1689, 10,  55.19);
   Insert into a_bkorders.order_details values(1601, 4, 1448,  5,  26.99);

Insert into a_bkorders.order_headers    values(1702,  '2013-10-06', 227105);
   Insert into a_bkorders.order_details values(1702, 1, 1110,  2,  50.00);

Insert into a_bkorders.order_headers    values(1705,  '2013-10-06', 261502);
   Insert into a_bkorders.order_details values(1705, 1, 1776,  100,  44.99);
   Insert into a_bkorders.order_details values(1705, 2, 1128,  400,  41.40);

Insert into a_bkorders.order_headers    values(14873,  '2013-10-11',  267780);
   Insert into a_bkorders.order_details values(14873, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(14873, 2, 1161,  3,  35.00);
   
Insert into a_bkorders.order_headers    values(1605,  '2013-10-06', 217796);
   Insert into a_bkorders.order_details values(1605, 1, 1106,  5,  34.95);
   Insert into a_bkorders.order_details values(1605, 2, 1107,  5,  20.95);
   Insert into a_bkorders.order_details values(1605, 3, 2001,  5,  39.00);
   Insert into a_bkorders.order_details values(1605, 4, 2007,  1,  39.00);
   Insert into a_bkorders.order_details values(1605, 5, 2008,  1,  39.00);
   Insert into a_bkorders.order_details values(1605, 6, 2009,  5,  34.95);
   Insert into a_bkorders.order_details values(1605, 7, 1101,  5,  55.95);
   Insert into a_bkorders.order_details values(1605, 8, 1103,  5,  10.00);
   

/* Nov 2013 */
Insert into a_bkorders.order_headers    values(5261,  '2013-11-28', 200368);
   Insert into a_bkorders.order_details values(5261, 1, 1142,  100,  34.95);
   Insert into a_bkorders.order_details values(5261, 2, 1128,  50,   46.95);
   Insert into a_bkorders.order_details values(5261, 3, 2001,  100,  39.00);
   
Insert into a_bkorders.order_headers    values(5262,  '2013-11-02', 272787);
   Insert into a_bkorders.order_details values(5262, 1, 2009,  5,    34.95);
   Insert into a_bkorders.order_details values(5262, 4, 2001,  1,    39.00);
 
Insert into a_bkorders.order_headers    values(5300,  '2013-11-05', 261502);

Insert into a_bkorders.order_headers    values(5321,  '2013-11-29', 261502);
   Insert into a_bkorders.order_details values(5321, 1, 2008, 20,  54.59);
   Insert into a_bkorders.order_details values(5321, 2, 1978, 10,  95.60);

Insert into a_bkorders.order_headers    values(5328,  '2013-11-30', 290298);
   Insert into a_bkorders.order_details values(5328, 1, 1182,  70,  44.99);

Insert into a_bkorders.order_headers    values(5345,  '2013-11-30', 227105);
   Insert into a_bkorders.order_details values(5345, 1, 1105, 40,  55.15);
   
Insert into a_bkorders.order_headers    values(54883,  '2013-11-11',  267780);
   Insert into a_bkorders.order_details values(54883, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(54883, 2, 1161,  3,  35.00);
   
   
/* Dec 2013 */
Insert into a_bkorders.order_headers    values(52905,  '2013-12-02', 259906);
   Insert into a_bkorders.order_details values(52905, 1, 2028,  1,  58.00);
   
Insert into a_bkorders.order_headers    values(52906,  '2013-12-04', 259906);
   Insert into a_bkorders.order_details values(52906, 1, 2028,  2,  58.50);
   Insert into a_bkorders.order_details values(52906, 2, 1103,  11,  15.00); 
   Insert into a_bkorders.order_details values(52906, 3, 1103,  1,  5.75); 
   
Insert into a_bkorders.order_headers    values(5409,  '2013-12-07', 267780);

Insert into a_bkorders.order_headers    values(5483,  '2013-12-11',  267780);
   Insert into a_bkorders.order_details values(5483, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(5483, 2, 1161,  3,  35.00);

Insert into a_bkorders.order_headers    values(5491,  '2013-12-12', 222477);
   Insert into a_bkorders.order_details values(5491, 1, 1128,  1,  49.95);
   Insert into a_bkorders.order_details values(5491, 2, 1161,  1,  35.00);
   Insert into a_bkorders.order_details values(5491, 3, 2001,  1,  39.00);

Insert into a_bkorders.order_headers    values(5552,  '2013-12-12', 227105);
   Insert into a_bkorders.order_details values(5552, 1, 1102,  2,  49.99);

   /* Jan 2014 */
Insert into a_bkorders.order_headers    values(52900,  '2014-01-25', 226656);
   Insert into a_bkorders.order_details values(52900, 1, 1401,  20,  50.00);
   Insert into a_bkorders.order_details values(52900, 2, 1305,  125,  5.00);
      
Insert into a_bkorders.order_headers    values(52901,  '2014-01-26', 259906);
   Insert into a_bkorders.order_details values(52901, 1, 1401,  50,  49.00);

Insert into a_bkorders.order_headers    values(5554,  '2014-01-20', 290298);

Insert into a_bkorders.order_headers    values(5555,  '2014-01-18', 221297);
   Insert into a_bkorders.order_details values(5555, 1, 1101,  5,  59.99);
   Insert into a_bkorders.order_details values(5555, 2, 1142,  5,  39.00);
   Insert into a_bkorders.order_details values(5555, 3, 1162,  2,  35.00);

Insert into a_bkorders.order_headers    values(5561,  '2014-01-22', 222477);
   Insert into a_bkorders.order_details values(5561, 1, 1142,  1,  34.95);
   Insert into a_bkorders.order_details values(5561, 2, 1128,  5,  46.95);
   Insert into a_bkorders.order_details values(5561, 3, 2001,  1,  39.00);
   
Insert into a_bkorders.order_headers    values(5562,  '2014-01-28', 267780);
   Insert into a_bkorders.order_details values(5562, 1, 2009,  5,  34.95);
   Insert into a_bkorders.order_details values(5562, 2, 2008,  1,  46.95);
   Insert into a_bkorders.order_details values(5562, 3, 2007,  1,  39.00);
   Insert into a_bkorders.order_details values(5562, 4, 2001,  1,  39.00);
   
/* Feb 2014 */
Insert into a_bkorders.order_headers    values(40814,  '2014-02-15', 272787);
   Insert into a_bkorders.order_details values(40814, 1, 1103,  23,  12.00);

Insert into a_bkorders.order_headers    values(40836,  '2014-02-20', 258595);
   Insert into a_bkorders.order_details values(40836, 1, 2008,  2,  12.50);

Insert into a_bkorders.order_headers    values(41811,  '2014-02-12', 221297);
   Insert into a_bkorders.order_details values(41811, 1, 2007,  1,  40.49);
   Insert into a_bkorders.order_details values(41811, 2, 1357,  2,  23.40);
   Insert into a_bkorders.order_details values(41811, 3, 1537,  3,  28.19);

Insert into a_bkorders.order_headers    values(41812,  '2014-02-12', 227105);
   Insert into a_bkorders.order_details values(41812, 1, 2009,  1,  26.99);

Insert into a_bkorders.order_headers    values(41814,  '2014-02-15', 290298);
   Insert into a_bkorders.order_details values(41814, 1, 1258,  1,  45.99);   
   
Insert into a_bkorders.order_headers    values(18142,  '2014-02-12', 227105);
   Insert into a_bkorders.order_details values(18142, 1, 1279,  1,  26.99);

Insert into a_bkorders.order_headers    values(18144,  '2014-02-15', 290298);
   Insert into a_bkorders.order_details values(18144, 1, 1304,  1,  45.99);  
 
Insert into a_bkorders.order_headers    values(18145,  '2014-02-15', 222477);
   Insert into a_bkorders.order_details values(18145, 1, 1602,  1,  2.75);  
   Insert into a_bkorders.order_details values(18145, 2, 1077,  2,  40.75);  
 
   
/* Mar 2014 */
Insert into a_bkorders.order_headers    values(41840,  '2014-03-01', 267780);
   Insert into a_bkorders.order_details values(41840, 1, 1103,  2,  12.00);

Insert into a_bkorders.order_headers    values(41841,  '2014-03-02', 272787);
   Insert into a_bkorders.order_details values(41841, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(41850,  '2014-03-02', 234138);
   Insert into a_bkorders.order_details values(41850, 1, 1279,  1,  40.49);      

Insert into a_bkorders.order_headers    values(41224,  '2014-03-08', 218709);
   Insert into a_bkorders.order_details values(41224, 1, 1101,  8,  55.19);
  
Insert into a_bkorders.order_headers    values(41852,  '2014-03-08', 261502);
   Insert into a_bkorders.order_details values(41852, 1, 1279,  1,  40.49);
   
Insert into a_bkorders.order_headers    values(33001,  '2014-03-04', 282716);
   Insert into a_bkorders.order_details values(33001, 1, 1109,  3, 25.00);
   Insert into a_bkorders.order_details values(33001, 2, 1161,  3, 35.00);

Insert into a_bkorders.order_headers    values(33002,  '2014-03-12', 282716);
   Insert into a_bkorders.order_details values(33002, 1, 1258,  1,  44.99);
   Insert into a_bkorders.order_details values(33002, 2, 1619,  2,  35.00);
   Insert into a_bkorders.order_details values(33002, 3, 1948,  1,  40.94);
   Insert into a_bkorders.order_details values(33002, 4, 1162,  1,  35.00);
   Insert into a_bkorders.order_details values(33002, 5, 1128,  1,  46.20);

Insert into a_bkorders.order_headers    values(33005,  '2014-03-13', 282716);
   Insert into a_bkorders.order_details values(33005, 1, 1628,  1,   32.00);
   Insert into a_bkorders.order_details values(33005, 2, 1629,  1,   19.95);
   
Insert into a_bkorders.order_headers    values(33006,  '2014-03-13', 272787 );
   Insert into a_bkorders.order_details values(33006, 1, 1628,  1,   32.00);
   Insert into a_bkorders.order_details values(33006, 2, 1629,  1,   19.95);
   
Insert into a_bkorders.order_headers    values(33007,  '2014-03-12', 272787);
   Insert into a_bkorders.order_details values(33007, 1, 1258,  1,  44.99);
   Insert into a_bkorders.order_details values(33007, 2, 1619,  2,  35.00);
   Insert into a_bkorders.order_details values(33007, 3, 1128,  1,  46.20); 

Insert into a_bkorders.order_headers    values(33013,  '2014-03-20', 282716);
   Insert into a_bkorders.order_details values(33013, 1, 1305,  49,  6.00);
   Insert into a_bkorders.order_details values(33013, 2, 1401,  100,  65.00);

Insert into a_bkorders.order_headers    values(33014,  '2014-03-21', 282716);
   Insert into a_bkorders.order_details values(33014, 1, 1628,  10,   32.00);
   Insert into a_bkorders.order_details values(33014, 2, 1629,  10,   19.95);
   
Insert into a_bkorders.order_headers    values(33022,  '2014-03-22', 282716);
   Insert into a_bkorders.order_details values(33022, 1, 1627,   1,  199.95);
   
Insert into a_bkorders.order_headers    values(33023,  '2014-03-23', 282716);
   Insert into a_bkorders.order_details values(33023, 1, 1978,   5,   92.00);   
 
Insert into a_bkorders.order_headers    values(33025,  '2014-03-23', 282716);
   Insert into a_bkorders.order_details values(33025, 1, 1602, 300,    2.50);
   Insert into a_bkorders.order_details values(33025, 3, 1602, 97,     2.00);
   
Insert into a_bkorders.order_headers    values(33034,  '2014-03-24', 282716);
   Insert into a_bkorders.order_details values(33034, 1, 1619,   1,   29.99);
   Insert into a_bkorders.order_details values(33034, 2, 1619,   2,   15.95);
   
Insert into a_bkorders.order_headers    values(33035,  '2014-03-25', 282716);
   Insert into a_bkorders.order_details values(33035, 1, 1142,   2,   90.00);
   
Insert into a_bkorders.order_headers    values(33040,  '2014-03-26', 282716);
   Insert into a_bkorders.order_details values(33040, 1, 1162,   1,   32.00);
   Insert into a_bkorders.order_details values(33040, 2, 1626,   1 ,  19.95);
   
Insert into a_bkorders.order_headers    values(33017,  '2014-03-26', 282716);
   Insert into a_bkorders.order_details values(33017, 1, 1625,   1,   4.00);
   
Insert into a_bkorders.order_headers    values(33008,  '2014-03-23', 282716);
   Insert into a_bkorders.order_details values(33008, 1, 1628,  2,   32.00);
   Insert into a_bkorders.order_details values(33008, 2, 1448,  5,  25.00);
   
Insert into a_bkorders.order_headers    values(33009,  '2014-03-22', 282716);
   Insert into a_bkorders.order_details values(33009, 2, 1142,  5,    39.00); 
    
Insert into a_bkorders.order_headers    values(4007,  '2014-03-03', 276381);
   Insert into a_bkorders.order_details values(4007, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(4002,  '2014-03-08', 234138);
   Insert into a_bkorders.order_details values(4002, 1, 1107,  11,  25.00);
   Insert into a_bkorders.order_details values(4002, 2, 1106,  12,  25.50);
   
Insert into a_bkorders.order_headers    values(4003,  '2014-03-08', 200368);
   Insert into a_bkorders.order_details values(4003, 1, 1104,  5,  45.00);      
   
/* Apr 2014 */

Insert into a_bkorders.order_headers    values(41853,  '2014-04-02', 234138);
   Insert into a_bkorders.order_details values(41853, 1, 1448,  10,  30.00);
   Insert into a_bkorders.order_details values(41853, 2, 1162,  20,  34.95);
         
Insert into a_bkorders.order_headers    values(31455,  '2014-04-05', 212921);
   Insert into a_bkorders.order_details values(31455, 1, 1279,  1,  40.49);
      
Insert into a_bkorders.order_headers    values(31560,  '2014-04-15', 276381);
   Insert into a_bkorders.order_details values(31560, 1, 1279,  1,  40.49);
   
Insert into a_bkorders.order_headers    values(1256,  '2014-04-08', 272787);
   Insert into a_bkorders.order_details values(1256, 1, 1103,  2,  12.00);
   Insert into a_bkorders.order_details values(1256, 2, 1104,  1,  45.00);
   
/* May 2014 */

Insert into a_bkorders.order_headers    values(23890,  '2014-05-01', 212921);
   Insert into a_bkorders.order_details values(23890, 1, 1103, 11, 15.00);

Insert into a_bkorders.order_headers    values(25803,  '2014-05-02', 224038);
   Insert into a_bkorders.order_details values(25803, 1, 1128,  25,  45.00);
   Insert into a_bkorders.order_details values(25803, 2, 1301,  15,  45.50);
   Insert into a_bkorders.order_details values(25803, 3, 1304,  5,   59.99);

Insert into a_bkorders.order_headers    values(22774,  '2014-05-04', 239427);
   Insert into a_bkorders.order_details values(22774, 1, 1304,  50,  45.00);
   Insert into a_bkorders.order_details values(22774, 2, 1305,  50,   9.99);
     
Insert into a_bkorders.order_headers    values(10812,  '2014-05-05', 260368);
   Insert into a_bkorders.order_details values(10812, 1, 1128,  1,  49.95); 
   
Insert into a_bkorders.order_headers    values(24802,  '2014-05-06', 228175);
   Insert into a_bkorders.order_details values(24802, 1, 1103,  3,  15.00);
   Insert into a_bkorders.order_details values(24802, 2, 1306,  5,  250.12);

Insert into a_bkorders.order_headers    values(42891,  '2014-05-05', 228175);
   Insert into a_bkorders.order_details values(42891, 1, 1142,  1, 15.00);

Insert into a_bkorders.order_headers    values(24345,  '2014-05-26', 224038);
   Insert into a_bkorders.order_details values(24345, 1, 1104,  5,  45.00);
   Insert into a_bkorders.order_details values(24345, 2, 1306,  5,  250.12);

Insert into a_bkorders.order_headers    values(42331,  '2014-05-24', 212921);
   Insert into a_bkorders.order_details values(42331, 1, 1142,  5, 15.00);
 

/* June 2014 */

Insert into a_bkorders.order_headers    values(32903,  '2014-06-02', 226656);
   Insert into a_bkorders.order_details values(32903, 1, 1401,  1,  58.00);
   
Insert into a_bkorders.order_headers    values(32904,  '2014-06-04', 259906);
   Insert into a_bkorders.order_details values(32904, 1, 1305,  450,  5.19);
   Insert into a_bkorders.order_details values(32904, 2, 1448,  4,  29.69);   
   
Insert into a_bkorders.order_headers    values(1553,  '2014-06-12', 227105);
   Insert into a_bkorders.order_details values(1553, 1, 1103,  200,  12.00);
   Insert into a_bkorders.order_details values(1553, 2, 1104,  100,  45.00);
   
Insert into a_bkorders.order_headers    values(1554,  '2014-06-20', 290298);

Insert into a_bkorders.order_headers    values(1555,  '2014-06-18', 221297);
   Insert into a_bkorders.order_details values(1555, 1, 1101,  5,  59.99);
   Insert into a_bkorders.order_details values(1555, 2, 1142,  5,  39.00);
   Insert into a_bkorders.order_details values(1555, 3, 1162,  2,  35.00);

Insert into a_bkorders.order_headers    values(1561,  '2014-06-22', 222477);
   Insert into a_bkorders.order_details values(1561, 1, 1142,  1,  34.95);
   Insert into a_bkorders.order_details values(1561, 2, 1128,  5,  46.95);
   Insert into a_bkorders.order_details values(1561, 3, 2001,  1,  39.00);
   
Insert into a_bkorders.order_headers    values(1562,  '2014-06-28', 267780);
   Insert into a_bkorders.order_details values(1562, 1, 2009,  5,  34.95);
   Insert into a_bkorders.order_details values(1562, 2, 2008,  1,  46.95);
   Insert into a_bkorders.order_details values(1562, 3, 2007,  1,  39.00);
   Insert into a_bkorders.order_details values(1562, 4, 2001,  1,  39.00);

Insert into a_bkorders.order_headers    values(30814,  '2014-06-15', 272787);
   Insert into a_bkorders.order_details values(30814, 1, 1103,  23,  12.00);

Insert into a_bkorders.order_headers    values(30815, '2014-06-16', 272787);
   Insert into a_bkorders.order_details values(30815, 1, 1448, 155,  25.00);

Insert into a_bkorders.order_headers    values(1254,  '2014-06-23', 263119);
   Insert into a_bkorders.order_details values(1254, 2, 2008,  10,   46.95);
   Insert into a_bkorders.order_details values(1254, 3, 2007,  10,   39.00);

Insert into a_bkorders.order_headers    values(1255,  '2014-06-28', 267780);
   Insert into a_bkorders.order_details values(1255, 1, 1101,  5,    59.99);
   Insert into a_bkorders.order_details values(1255, 2, 1142,  5,    39.00);
   Insert into a_bkorders.order_details values(1255, 3, 1162,  2,    35.00);
   
Insert into a_bkorders.order_headers    values(1261,  '2014-06-28', 200368);
   Insert into a_bkorders.order_details values(1261, 1, 1142,  100,  34.95);
   Insert into a_bkorders.order_details values(1261, 2, 1128,  50,   46.95);
   Insert into a_bkorders.order_details values(1261, 3, 2001,  100,  39.00);
   
Insert into a_bkorders.order_headers    values(32905,  '2014-06-02', 259906);
   Insert into a_bkorders.order_details values(32905, 1, 2028,  1,  58.00);

Insert into a_bkorders.order_headers    values(21841,  '2014-06-02', 267780);
   Insert into a_bkorders.order_details values(21841, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(21850,  '2014-06-02', 261502);
   Insert into a_bkorders.order_details values(21850, 1, 1162,  1,  30.49);
   Insert into a_bkorders.order_details values(21850, 2, 1109,  1,  25.00);
      
Insert into a_bkorders.order_headers    values(2045,  '2014-06-18', 267780);
   Insert into a_bkorders.order_details values(2045, 1, 1894,  1,  35.99);   
   
Insert into a_bkorders.order_headers    values(2200,  '2014-06-18', 261502);
   Insert into a_bkorders.order_details values(2200, 1, 1200,  5,  16.33);
   Insert into a_bkorders.order_details values(2200, 2, 1180,  5,  45.99);
   Insert into a_bkorders.order_details values(2200, 3, 1128,  5,  46.20);

/* July 2014 */

Insert into a_bkorders.order_headers    values(1262,   '2014-07-02', 272787);
   Insert into a_bkorders.order_details values(1262, 1, 2009,  5,    34.95);
   Insert into a_bkorders.order_details values(1262, 4, 2001,  1,    39.00);
 
Insert into a_bkorders.order_headers    values(1300,   '2014-07-05', 261502);

Insert into a_bkorders.order_headers    values(1302,  '2014-07-05', 222477);
   Insert into a_bkorders.order_details values(1302, 1, 1258,  1,    44.99);

Insert into a_bkorders.order_headers    values(1310,  '2014-07-09', 218709);
   Insert into a_bkorders.order_details values(1310, 1, 1774,  1,    14.67);
   Insert into a_bkorders.order_details values(1310, 2, 1619,  1,    26.99);
   Insert into a_bkorders.order_details values(1310, 3, 1269,  1,    58.83);
   
Insert into a_bkorders.order_headers    values(1321,   '2014-07-29', 261502);
   Insert into a_bkorders.order_details values(1321, 1, 2008, 20,  54.59);
   Insert into a_bkorders.order_details values(1321, 2, 1978, 10,  95.60);

Insert into a_bkorders.order_headers    values(1328,   '2014-07-30', 290298);
   Insert into a_bkorders.order_details values(1328, 1, 1182,  70,  44.99);

Insert into a_bkorders.order_headers    values(1345,   '2014-07-30', 227105);
   Insert into a_bkorders.order_details values(1345, 1, 1105, 40,  55.15);
   
Insert into a_bkorders.order_headers    values(32906,  '2014-07-04', 259906);
   Insert into a_bkorders.order_details values(32906, 1, 2028,  2,  58.50);
   Insert into a_bkorders.order_details values(32906, 2, 1103,  11,  15.00); 
   Insert into a_bkorders.order_details values(32906, 3, 1103,  1,  5.75); 
 
Insert into a_bkorders.order_headers    values(22909,  '2014-07-25', 239427);
   Insert into a_bkorders.order_details values(22909, 1, 1104,  5,  45.00);
   
Insert into a_bkorders.order_headers    values(22910,  '2014-07-25', 218709);
   Insert into a_bkorders.order_details values(22910, 1, 1678,  5,  49.99);
   Insert into a_bkorders.order_details values(22910, 2, 1162,  5,  35.00);

Insert into a_bkorders.order_headers    values(32997,  '2014-07-22', 239427);
   Insert into a_bkorders.order_details values(32997, 1, 1948,  5,  40.94);  
   Insert into a_bkorders.order_details values(32997, 2, 1199,  5,  18.39);
   Insert into a_bkorders.order_details values(32997, 3, 1457,  5,  53.99);
   Insert into a_bkorders.order_details values(32997, 4, 1133,  5,  18.15);
   Insert into a_bkorders.order_details values(32997, 5, 1894,  5,  36.79);

Insert into a_bkorders.order_headers    values(32998,  '2014-07-22', 261502);
   Insert into a_bkorders.order_details values(32998, 1, 2006,  3,  20.00);
   
Insert into a_bkorders.order_headers    values(41005,  '2014-07-28', 290298);
   Insert into a_bkorders.order_details values(41005, 1, 1142,  2,  42.45);
   Insert into a_bkorders.order_details values(41005, 2, 1107,  4,  21.50);

Insert into a_bkorders.order_headers    values(41006,  '2014-07-28', 267780);
   Insert into a_bkorders.order_details values(41006, 1, 1142, 10, 42.95);  
   
Insert into a_bkorders.order_headers    values(42899,  '2014-07-29', 261502);
   Insert into a_bkorders.order_details values(42899, 1, 1128,  5, 25.00);
   Insert into a_bkorders.order_details values(42899, 2, 1103,  1 , 10.95);    
 
/* August 2014 */

Insert into a_bkorders.order_headers    values(32907,  '2014-08-04', 259906);
   Insert into a_bkorders.order_details values(32907, 1, 2028,  3,  58.00);
   Insert into a_bkorders.order_details values(32907, 2, 1142,  10,  11.14); 
 
Insert into a_bkorders.order_headers    values(1346,  '2014-08-03', 227105);
   Insert into a_bkorders.order_details values(1346, 1, 1619,  100,  26.99);
   Insert into a_bkorders.order_details values(1346, 2, 1401,  200,  50.04);
   Insert into a_bkorders.order_details values(1346, 3, 1108,  600,  27.60);

Insert into a_bkorders.order_headers    values(1347,  '2014-08-03', 218709);
   Insert into a_bkorders.order_details values(1347, 1, 1258,  1,  44.99);
   Insert into a_bkorders.order_details values(1347, 2, 1619,  2,  35.00);
   Insert into a_bkorders.order_details values(1347, 3, 1948,  1,  40.94);
   Insert into a_bkorders.order_details values(1347, 4, 1162,  1,  35.00);
   Insert into a_bkorders.order_details values(1347, 5, 1128,  1,  46.20);
   
Insert into a_bkorders.order_headers    values(1409,  '2014-08-07', 267780);

Insert into a_bkorders.order_headers    values(1410,  '2014-08-07', 261502);
   Insert into a_bkorders.order_details values(1410, 1, 2006,  35,  20.00);

Insert into a_bkorders.order_headers    values(21254,  '2014-08-23', 263119);
   Insert into a_bkorders.order_details values(21254, 2, 2008,  10,   46.95);
   Insert into a_bkorders.order_details values(21254, 3, 2007,  10,   39.00);

Insert into a_bkorders.order_headers    values(21255,  '2014-08-28', 267780);
   Insert into a_bkorders.order_details values(21255, 1, 1101,  5,    59.99);
   Insert into a_bkorders.order_details values(21255, 2, 1142,  5,    39.00);
   Insert into a_bkorders.order_details values(21255, 3, 1162,  2,    35.00);
   
Insert into a_bkorders.order_headers    values(21261,  '2014-08-28', 200368);
   Insert into a_bkorders.order_details values(21261, 1, 1142,  100,  34.95);
   Insert into a_bkorders.order_details values(21261, 2, 1128,  50,   46.95);
   Insert into a_bkorders.order_details values(21261, 3, 2001,  100,  39.00);

Insert into a_bkorders.order_headers    values(1411,  '2014-08-12', 227105);
   Insert into a_bkorders.order_details values(1411, 1, 1128, 50, 25.00);

Insert into a_bkorders.order_headers    values(1420,  '2014-08-12', 227105);
   Insert into a_bkorders.order_details values(1420, 1, 1109, 30, 25.00);
   Insert into a_bkorders.order_details values(1420, 2, 1161, 30, 35.00);

Insert into a_bkorders.order_headers    values(1442,  '2014-08-18', 267780);
   Insert into a_bkorders.order_details values(1442, 1, 1128,  25,  12.50);
   Insert into a_bkorders.order_details values(1442, 2, 2008,  40,  34.95);
   Insert into a_bkorders.order_details values(1442, 3, 2007,  25,  35.00);
   
Insert into a_bkorders.order_headers    values(1483,   '2014-08-11',  267780);
   Insert into a_bkorders.order_details values(1483, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(1483, 2, 1161,  3,  35.00);

Insert into a_bkorders.order_headers    values(1491,   '2014-08-12', 222477);
   Insert into a_bkorders.order_details values(1491, 1, 1128,  1,  49.95);
   Insert into a_bkorders.order_details values(1491, 2, 1161,  1,  35.00);
   Insert into a_bkorders.order_details values(1491, 3, 2001,  1,  39.00);

Insert into a_bkorders.order_headers    values(1552,   '2014-08-12', 227105);
   Insert into a_bkorders.order_details values(1552, 1, 1102,  2,  49.99);

Insert into a_bkorders.order_headers    values(32900,   '2014-08-25', 226656);
   Insert into a_bkorders.order_details values(32900, 1, 1401,  20,  50.00);
   Insert into a_bkorders.order_details values(32900, 2, 1305,  125,  5.00);
            
Insert into a_bkorders.order_headers    values(32901,   '2014-08-26', 259906);
   Insert into a_bkorders.order_details values(32901, 1, 1401,  50,  49.00);
   
Insert into a_bkorders.order_headers    values(32902,   '2014-08-27', 259906);
   Insert into a_bkorders.order_details values(32902, 1, 1305,  49,  6.00);
   Insert into a_bkorders.order_details values(32902, 2, 1401,  100,  65.00);
   
 
/* September 2014 */

Insert into a_bkorders.order_headers    values(30835,  '2014-09-17', 211483);
   Insert into a_bkorders.order_details values(30835, 1, 1103,  25,  10.95);

Insert into a_bkorders.order_headers    values(30836,  '2014-09-20', 258595);
   Insert into a_bkorders.order_details values(30836, 1, 2008,  2,  12.50);

Insert into a_bkorders.order_headers    values(1811,  '2014-09-12', 221297);
   Insert into a_bkorders.order_details values(1811, 1, 2007,  1,  40.49);
   Insert into a_bkorders.order_details values(1811, 2, 1357,  2,  23.40);
   Insert into a_bkorders.order_details values(1811, 3, 1537,  3,  28.19);

Insert into a_bkorders.order_headers    values(1812,  '2014-09-12', 227105);
   Insert into a_bkorders.order_details values(1812, 1, 2009,  1,  26.99);

Insert into a_bkorders.order_headers    values(1814,  '2014-09-15', 290298);
   Insert into a_bkorders.order_details values(1814, 1, 1258,  1,  45.99);

Insert into a_bkorders.order_headers    values(1818,  '2014-09-16', 212921);
   Insert into a_bkorders.order_details values(1818, 1, 1106, 30,  20.00);
   Insert into a_bkorders.order_details values(1818, 2, 1537,  2,  25.00);
   Insert into a_bkorders.order_details values(1818, 3, 1180,  1,  46.99);
   Insert into a_bkorders.order_details values(1818, 4, 1979,  1,  53.99);
   
Insert into a_bkorders.order_headers    values(1710,  '2014-09-08', 261502);
   Insert into a_bkorders.order_details values(1710, 1, 1776,  99,  45.49);

Insert into a_bkorders.order_headers    values(1712,  '2014-09-09', 290298);
   Insert into a_bkorders.order_details values(1712, 1, 1835,  1,  45.99);
   Insert into a_bkorders.order_details values(1712, 2, 1162,  99,  30.00);

Insert into a_bkorders.order_headers    values(2004,  '2014-09-22', 272787);
   Insert into a_bkorders.order_details values(2004, 2, 1161,  1,  35.00);

Insert into a_bkorders.order_headers    values(2005,  '2014-09-30', 272787);
   Insert into a_bkorders.order_details values(2005, 1, 1448, 50,  25.00); 

Insert into a_bkorders.order_headers    values(2012,  '2014-09-22', 272787);
   Insert into a_bkorders.order_details values(2012, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(2013,  '2014-09-22', 272787);
   Insert into a_bkorders.order_details values(2013, 1, 2009,  2,  12.50);

Insert into a_bkorders.order_headers    values(30847,  '2014-09-20', 296598);
   Insert into a_bkorders.order_details values(30847, 1, 1103,  2,  12.00);

Insert into a_bkorders.order_headers    values(30848,  '2014-09-21', 263119);
   Insert into a_bkorders.order_details values(30848, 1, 2007,  2,  12.50);

Insert into a_bkorders.order_headers    values(30849,  '2014-09-22', 217796);
   Insert into a_bkorders.order_details values(30849, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(51833,  '2014-09-08', 218709);
   Insert into a_bkorders.order_details values(51833, 1, 1101,  8,  55.19);
   Insert into a_bkorders.order_details values(51833, 2, 1104,  1,  45.00);
   Insert into a_bkorders.order_details values(51833, 3, 1162,  20, 34.95);
   Insert into a_bkorders.order_details values(51833, 4, 1279,  1,  40.49);
   
Insert into a_bkorders.order_headers    values(51850,  '2014-09-08', 299099);
   Insert into a_bkorders.order_details values(51850, 1, 1677, 1, 70.00);
   
Insert into a_bkorders.order_headers    values(51851,  '2014-09-12', 259969);
   Insert into a_bkorders.order_details values(51851, 1, 1162, 1, 35.00);
   Insert into a_bkorders.order_details values(51851, 2, 1269, 1, 63.95);
   Insert into a_bkorders.order_details values(51851, 3, 2017, 1, 49.99);

Insert into a_bkorders.order_headers    values(51852,  '2014-09-12', 259969);
   Insert into a_bkorders.order_details values(51852, 1, 2032, 1, 0.00);
   Insert into a_bkorders.order_details values(51852, 3, 2017, 1, 0.00);
   
Insert into a_bkorders.order_headers    values(51853,  '2014-09-25', 218709);
   Insert into a_bkorders.order_details values(51853, 4, 1161, 100, 25.25);
   
Insert into a_bkorders.order_headers    values(51854,  '2014-09-26', 239427);
   Insert into a_bkorders.order_details values(51854,  3, 1537, 15, 15.37);

Insert into a_bkorders.order_headers    values(51855,  '2014-09-26', 260368);
   Insert into a_bkorders.order_details values(51855, 4, 1200, 2, 17.00);
   Insert into a_bkorders.order_details values(51855, 1, 1200, 4, 16.00);
   Insert into a_bkorders.order_details values(51855, 2, 1200, 2, 16.00);
   Insert into a_bkorders.order_details values(51855, 3, 1200, 3, 17.00);
   
Insert into a_bkorders.order_headers    values(51856,  '2014-09-28', 272611);
   Insert into a_bkorders.order_details values(51856, 4, 1546, 2, 10.39);
   Insert into a_bkorders.order_details values(51856, 1, 1545, 2, 13.00);
  
/* October 2014 */


/* November 2014 */

Insert into a_bkorders.order_headers    values(30816,  '2014-11-06', 272787);
   Insert into a_bkorders.order_details values(30816, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(30820,  '2014-11-10', 234138);
   Insert into a_bkorders.order_details values(30820, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(30821,  '2014-11-10', 217796);
   Insert into a_bkorders.order_details values(30821, 1, 1103,  2,  10.95);

Insert into a_bkorders.order_headers    values(30822,  '2014-11-12', 211483);
   Insert into a_bkorders.order_details values(30822, 1, 1128,  10,  49.95);  

Insert into a_bkorders.order_headers    values(30855,  '2014-11-23', 282716);
   Insert into a_bkorders.order_details values(30855, 1, 1602, 500,    2.00);

Insert into a_bkorders.order_headers    values(51840,  '2014-11-01', 267780);
   Insert into a_bkorders.order_details values(51840, 1, 1103,  2,  12.00);

Insert into a_bkorders.order_headers    values(51841,  '2014-11-02', 272787);
   Insert into a_bkorders.order_details values(51841, 1, 1448, 50,  25.00);
   Insert into a_bkorders.order_details values(51841, 2, 1279,  1,  40.49);
      
Insert into a_bkorders.order_headers    values(51842,  '2014-11-18', 222477);
   Insert into a_bkorders.order_details values(51842, 1, 1894,  1,  35.99);   
   Insert into a_bkorders.order_details values(51842, 2, 1199,  5,  18.39);
   Insert into a_bkorders.order_details values(51842, 4, 1133,  5,  18.15);
   Insert into a_bkorders.order_details values(51842, 5, 1894,  5,  36.79);

Insert into a_bkorders.order_headers    values(51843,  '2014-11-20', 290298);
   Insert into a_bkorders.order_details values(51843, 1, 1894,  1,  37.59);
   Insert into a_bkorders.order_details values(51843, 2, 1894,  1,  18.75);  

Insert into a_bkorders.order_headers    values(30824, '2014-11-05', 222477);
   Insert into a_bkorders.order_details values(30824, 1, 1670, 10,  40.00);
   Insert into a_bkorders.order_details values(30824, 4, 2005, 20,  45.00);
   
Insert into a_bkorders.order_headers    values(2001,  '2014-11-02', 272787);
   Insert into a_bkorders.order_details values(2001, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(2002,  '2014-11-12', 272787);
   Insert into a_bkorders.order_details values(2002, 1, 1103,  20,  10.95);

Insert into a_bkorders.order_headers    values(2003,  '2014-11-12', 272787);
   Insert into a_bkorders.order_details values(2003, 1, 1103,  2,  12.00);

Insert into a_bkorders.order_headers    values(1564,  '2014-11-18', 227105);
   Insert into a_bkorders.order_details values(1564, 1, 1106,  50,  34.95);
   Insert into a_bkorders.order_details values(1564, 2, 1107,  50,  20.95);
   Insert into a_bkorders.order_details values(1564, 3, 2001,  50,  39.00);

Insert into a_bkorders.order_headers    values(1800,  '2014-11-12', 217796);
   Insert into a_bkorders.order_details values(1800, 1, 2009,  5,  34.95);
   Insert into a_bkorders.order_details values(1800, 2, 2008,  1,  46.95);
   
Insert into a_bkorders.order_headers    values(1801, '2014-11-13', 217796);
   Insert into a_bkorders.order_details values(1801, 1, 1103,  2,  10.95);
   Insert into a_bkorders.order_details values(1801, 2, 1106,  1,  29.00);

Insert into a_bkorders.order_headers    values(30825, '2014-11-21', 221297);
   Insert into a_bkorders.order_details values(30825, 1, 1776,  4,  45.49);
   
Insert into a_bkorders.order_headers    values(30826,  '2014-11-24', 211483);
   Insert into a_bkorders.order_details values(30826, 2, 1161,  16,  35.00);

Insert into a_bkorders.order_headers    values(30833,  '2014-11-14', 211483);
   Insert into a_bkorders.order_details values(30833, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(30834,  '2014-11-17', 211483);
   Insert into a_bkorders.order_details values(30834, 1, 1128,  1,  49.95);

   /* December 2014 */
Insert into a_bkorders.order_headers    values(60002,  '2014-12-03', 222477);
   Insert into a_bkorders.order_details values(60002, 1, 1103,  2,  10.95);
   Insert into a_bkorders.order_details values(60002, 2, 1106,  1,  29.00);
   

Insert into a_bkorders.order_headers    values(60005,  '2014-12-06', 227105);
   Insert into a_bkorders.order_details values(60005, 1, 1110,  2,  50.00);
   Insert into a_bkorders.order_details values(60005, 2, 1776,  100,  44.99);
   Insert into a_bkorders.order_details values(60005, 3, 1128,  400,  41.40);

Insert into a_bkorders.order_headers    values(60009,  '2014-12-11',  267780);
   Insert into a_bkorders.order_details values(60009, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(60009, 2, 1161,  3,  35.00);
   Insert into a_bkorders.order_details values(60009, 3, 1142,  100,  34.95);
   Insert into a_bkorders.order_details values(60009, 4, 1128,  50,   46.95);
   Insert into a_bkorders.order_details values(60009, 5, 2001,  100,  39.00);
   
Insert into a_bkorders.order_headers    values(60011,  '2014-12-02', 272787);
   Insert into a_bkorders.order_details values(60011, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(60011, 2, 1161,  3,  35.00);
   Insert into a_bkorders.order_details values(60011, 3, 2028,  1,  58.00);
   

Insert into a_bkorders.order_headers    values(60012,  '2014-12-11',  267780);
   Insert into a_bkorders.order_details values(60012, 1, 1162,  1,  32.45);
   Insert into a_bkorders.order_details values(60012, 2, 1161,  3,  35.00);

Insert into a_bkorders.order_headers    values(60018,  '2014-12-12', 222477);
   Insert into a_bkorders.order_details values(60018, 1, 1128,  1,  49.95);
   Insert into a_bkorders.order_details values(60018, 2, 1161,  1,  35.00);
   Insert into a_bkorders.order_details values(60018, 3, 2001,  1,  39.00);

Insert into a_bkorders.order_headers    values(60019,  '2014-12-12', 227105);
   Insert into a_bkorders.order_details values(60019, 1, 1101,  5,  59.99);
   Insert into a_bkorders.order_details values(60019, 2, 1142,  5,  39.00);
   Insert into a_bkorders.order_details values(60019, 3, 1162,  2,  35.00);

Insert into a_bkorders.order_headers    values(60029,  '2014-12-22', 222477);
   Insert into a_bkorders.order_details values(60029, 1, 1628,  1,   32.00);
   Insert into a_bkorders.order_details values(60029, 2, 1629,  1,   19.95);
   Insert into a_bkorders.order_details values(60029, 3, 1258,  1,  44.99);
   Insert into a_bkorders.order_details values(60029, 4, 1619,  2,  35.00);
   Insert into a_bkorders.order_details values(60029, 5, 1128,  1,  46.20); 
  
Insert into a_bkorders.order_headers    values(60025,  '2014-12-28', 267780);
   Insert into a_bkorders.order_details values(60025, 1, 1627,   1,  199.95);
   

Insert into a_bkorders.order_headers    values(60030,  '2014-12-24', 221297);
   Insert into a_bkorders.order_details values(60030, 1, 1627,   1,  199.95);


Insert into a_bkorders.order_headers    values(60039,  '2014-12-12', 227105);
   Insert into a_bkorders.order_details values(60039, 1, 2009,  1,  26.99);
   Insert into a_bkorders.order_details values(60039, 3, 1602, 97,     2.00);
   Insert into a_bkorders.order_details values(60039, 2, 1448,  5,  25.00);
   Insert into a_bkorders.order_details values(60039, 4, 1305,  50,   9.99);

Insert into a_bkorders.order_headers    values(60032,  '2014-12-31', 290298);
   Insert into a_bkorders.order_details values(60032, 1, 1101,  5,    59.99);
   Insert into a_bkorders.order_details values(60032, 2, 1142,  5,    39.00);
   Insert into a_bkorders.order_details values(60032, 3, 1162,  2,    35.00);
   Insert into a_bkorders.order_details values(60032, 4, 1401,  50,   46.95);
   Insert into a_bkorders.order_details values(60032, 6, 2001,  100,  39.00);
   Insert into a_bkorders.order_details values(60032, 7, 1128,  5, 25.00);
   Insert into a_bkorders.order_details values(60032, 8, 1103,  1 , 10.95);    
  
Insert into a_bkorders.order_headers    values(60027,  '2014-12-31', 227105);
   Insert into a_bkorders.order_details values(60027, 1, 2032, 1, 0.00);
   Insert into a_bkorders.order_details values(60027, 3, 2017, 1, 0.00);
   Insert into a_bkorders.order_details values(60027, 4, 1161, 100, 25.25);
   Insert into a_bkorders.order_details values(60027, 6, 1537, 15, 15.37);
   
   
-- ---------------------------------------------------------------
 
/* January 2015 */   
   
Insert into a_bkorders.order_headers    values(31840,  '2015-01-01', 267780);
   Insert into a_bkorders.order_details values(31840, 1, 1103,  2,  12.00);

Insert into a_bkorders.order_headers    values(31841,  '2015-01-02', 272787);
   Insert into a_bkorders.order_details values(31841, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(31850,  '2015-01-02', 234138);
   Insert into a_bkorders.order_details values(31850, 1, 1279,  1,  40.49);
      
Insert into a_bkorders.order_headers    values(1045,  '2015-01-18', 222477);
   Insert into a_bkorders.order_details values(1045, 1, 1894,  1,  35.99);   
   
Insert into a_bkorders.order_headers    values(1200,  '2015-01-18', 212921);
   Insert into a_bkorders.order_details values(1200, 1, 1200,  5,  16.33);
   Insert into a_bkorders.order_details values(1200, 2, 1199,  5,  18.39);
   Insert into a_bkorders.order_details values(1200, 3, 1457,  5,  53.99);
   Insert into a_bkorders.order_details values(1200, 4, 1133,  5,  18.15);
   Insert into a_bkorders.order_details values(1200, 5, 1894,  5,  36.79);
   Insert into a_bkorders.order_details values(1200, 6, 1948,  5,  40.94);
   Insert into a_bkorders.order_details values(1200, 7, 1180,  5,  45.99);
   Insert into a_bkorders.order_details values(1200, 8, 1128,  5,  46.20);

Insert into a_bkorders.order_headers    values(1205,  '2015-01-20', 212921);
   Insert into a_bkorders.order_details values(1205, 1, 1448,  1,  27.29);

Insert into a_bkorders.order_headers    values(1212,  '2015-01-20', 290298);
   Insert into a_bkorders.order_details values(1212, 1, 1894,  1,  37.59);
   Insert into a_bkorders.order_details values(1212, 2, 1894,  1,  18.75);

Insert into a_bkorders.order_headers    values(51845,  '2015-01-01', 212921);
   Insert into a_bkorders.order_details values(51845, 1, 1103, 11, 15.00);
   Insert into a_bkorders.order_details values(51845, 2, 1301, 15,  45.50);
   Insert into a_bkorders.order_details values(51845, 3, 1304,  5,  59.99);
   Insert into a_bkorders.order_details values(51845, 4, 1541,  5,  12.00);  
   Insert into a_bkorders.order_details values(51845, 5, 1545,  5,  13.96);    
   
Insert into a_bkorders.order_headers    values(51846,  '2015-01-08', 234138);
   Insert into a_bkorders.order_details values(51846, 1, 1107,  11,  25.00);
   Insert into a_bkorders.order_details values(51846, 2, 1546,  12,  10.39);
   Insert into a_bkorders.order_details values(51846, 3, 2001,   5,  39.00);
   Insert into a_bkorders.order_details values(51846, 4, 1103,   2,  12.00);  
   Insert into a_bkorders.order_details values(51846, 5, 1541,   2,  12.00); 
   
Insert into a_bkorders.order_headers    values(51857,  '2015-01-08', 259969);
   Insert into a_bkorders.order_details values(51857, 2, 1425, 2, 28.09);
   Insert into a_bkorders.order_details values(51857, 3, 1609, 1, 18.95);
   Insert into a_bkorders.order_details values(51857, 4, 1109, 1, 80.00);
   Insert into a_bkorders.order_details values(51857, 5, 2009, 1, 29.99);
   
Insert into a_bkorders.order_headers    values(51858,  '2015-01-08', 259969);
   Insert into a_bkorders.order_details values(51858, 2, 1133, 3, 19.95);
   Insert into a_bkorders.order_details values(51858, 3, 1609, 3, 18.95);
   
Insert into a_bkorders.order_headers    values(51859,  '2015-01-08', 272611);
   Insert into a_bkorders.order_details values(51859, 2, 1128, 1, 49.99);
   Insert into a_bkorders.order_details values(51859, 1, 1269, 1, 63.95);
  
Insert into a_bkorders.order_headers    values(51860,  '2015-01-08', 299099);
   Insert into a_bkorders.order_details values(51860, 4, 2032, 1, 55.99);
      
/* February 2015 */  

Insert into a_bkorders.order_headers    values(1224,  '2015-02-08', 218709);
   Insert into a_bkorders.order_details values(1224, 1, 1101,  8,  55.19);

Insert into a_bkorders.order_headers    values(1253,  '2015-02-08', 272787);
   Insert into a_bkorders.order_details values(1253, 1, 1103,  2,  12.00);
   Insert into a_bkorders.order_details values(1253, 2, 1104,  1,  45.00);
   
Insert into a_bkorders.order_headers    values(31852,  '2015-02-08', 261502);
   Insert into a_bkorders.order_details values(31852, 1, 1279,  1,  40.49);
   
Insert into a_bkorders.order_headers    values(31853,  '2015-02-02', 234138);
   Insert into a_bkorders.order_details values(31853, 1, 1448,  10,  30.00);
   Insert into a_bkorders.order_details values(31853, 2, 1162,  20,  34.95);
         
Insert into a_bkorders.order_headers    values(31855,  '2015-02-05', 212921);
   Insert into a_bkorders.order_details values(31855, 1, 1279,  1,  40.49);
      
Insert into a_bkorders.order_headers    values(31860,  '2015-02-15', 276381);
   Insert into a_bkorders.order_details values(31860, 1, 1279,  1,  40.49);
   
Insert into a_bkorders.order_headers   values(51847,  '2015-02-04', 217796);
   Insert into a_bkorders.order_details values(51847, 1, 1541,  2,  10.95);
   Insert into a_bkorders.order_details values(51847, 2, 1542,  1,  16.99);

Insert into a_bkorders.order_headers    values(51848,  '2015-02-05', 276381);
   Insert into a_bkorders.order_details values(51848, 1, 1544, 50,  17.76);

Insert into a_bkorders.order_headers    values(51849,  '2015-02-08', 218709);
   Insert into a_bkorders.order_details values(51849, 1, 1543, 50,  25.00);
   Insert into a_bkorders.order_details values(51849, 2, 1544, 50,  17.76);
   
Insert into a_bkorders.order_headers    values(51861,  '2015-02-01', 260368);
   Insert into a_bkorders.order_details values(51861, 1, 2032, 1, 57.99);
   Insert into a_bkorders.order_details values(51861, 2, 2032, 2, 59.99);
     
Insert into a_bkorders.order_headers    values(51862,  '2015-02-02', 272611);
   Insert into a_bkorders.order_details values(51862, 1, 1627, 4, 120.18);
     
Insert into a_bkorders.order_headers    values(51863,  '2015-02-03', 239427);
   Insert into a_bkorders.order_details values(51863, 1, 1629, 42, 19.95);
     
Insert into a_bkorders.order_headers    values(51864,  '2015-02-03', 299099);
   Insert into a_bkorders.order_details values(51864, 2, 1628, 3,  34.65);
   Insert into a_bkorders.order_details values(51864, 3, 1108, 342,34.65);
   Insert into a_bkorders.order_details values(51864, 4, 1628, 4,  34.65);
  
/* March 2015 */

Insert into a_bkorders.order_headers    values(32890,  '2015-03-01', 212921);
   Insert into a_bkorders.order_details values(32890, 1, 1103, 11, 15.00);

Insert into a_bkorders.order_headers    values(22803,  '2015-03-02', 224038);
   Insert into a_bkorders.order_details values(22803, 1, 1128,  25,  45.00);
   Insert into a_bkorders.order_details values(22803, 2, 1301,  15,  45.50);
   Insert into a_bkorders.order_details values(22803, 3, 1304,  5,   59.99);

Insert into a_bkorders.order_headers    values(22804,  '2015-03-04', 239427);
   Insert into a_bkorders.order_details values(22804, 1, 1304,  50,  45.00);
   Insert into a_bkorders.order_details values(22804, 2, 1305,  50,   9.99);
     
Insert into a_bkorders.order_headers    values(1012,  '2015-03-05', 260368);
   Insert into a_bkorders.order_details values(1012, 1, 1128,  1,  49.95); 
   
Insert into a_bkorders.order_headers    values(22805,  '2015-03-06', 224038);
   Insert into a_bkorders.order_details values(22805, 1, 1104,  5,  45.00);
   Insert into a_bkorders.order_details values(22805, 2, 1306,  5,  250.12);

Insert into a_bkorders.order_headers    values(32891,  '2015-03-05', 212921);
   Insert into a_bkorders.order_details values(32891, 1, 1142,  5, 15.00);

Insert into a_bkorders.order_headers    values(1007,  '2015-03-03', 276381);
   Insert into a_bkorders.order_details values(1007, 1, 1448, 50,  25.00);
   
Insert into a_bkorders.order_headers    values(1002,  '2015-03-08', 234138);
   Insert into a_bkorders.order_details values(1002, 1, 1107,  11,  25.00);
   Insert into a_bkorders.order_details values(1002, 2, 1106,  12,  25.50);
   
Insert into a_bkorders.order_headers    values(1003,  '2015-03-08', 200368);
   Insert into a_bkorders.order_details values(1003, 1, 1104,  5,  45.00);
   
Insert into a_bkorders.order_headers    values(1606,  '2015-03-14', 217796);
   Insert into a_bkorders.order_details values(1606, 1, 1106,  5,  34.95);
   Insert into a_bkorders.order_details values(1606, 2, 1107,  5,  20.95);
   Insert into a_bkorders.order_details values(1606, 3, 2001,  5,  39.00);

Insert into a_bkorders.order_headers    values(1610,  '2015-03-15', 263119);
   Insert into a_bkorders.order_details values(1610, 1, 1103,  2,  12.00);  
   
Insert into a_bkorders.order_headers    values(1615,  '2015-03-15', 261502);
   Insert into a_bkorders.order_details values(1615, 1, 1103,  2,  12.00);
 
 Insert into a_bkorders.order_headers   values(1602,  '2015-03-14', 217796);
   Insert into a_bkorders.order_details values(1602, 1, 1103,  2,  10.95);
   Insert into a_bkorders.order_details values(1602, 2, 1106,  1,  29.00);

Insert into a_bkorders.order_headers    values(1008,  '2015-03-10', 276381);
   Insert into a_bkorders.order_details values(1008, 1, 1670, 50,  40.00);

Insert into a_bkorders.order_headers    values(1010,  '2015-03-10', 218709);
   Insert into a_bkorders.order_details values(1010, 1, 1537, 50,  25.00);

Insert into a_bkorders.order_headers    values(1011,  '2015-03-10', 261502);
   Insert into a_bkorders.order_details values(1011, 1, 1103,  2,  10.95);

Insert into a_bkorders.order_headers    values(1603,  '2015-03-10', 261502);   
   Insert into a_bkorders.order_details values(1603, 1, 2009,  5,  34.95);
   Insert into a_bkorders.order_details values(1603, 3, 2007,  1,  39.00);
   Insert into a_bkorders.order_details values(1603, 4, 2001,  1,  39.00);

Insert into a_bkorders.order_headers    values(1604,  '2015-03-10', 217796);
   Insert into a_bkorders.order_details values(1604, 1, 1103,  25,  10.95);
   Insert into a_bkorders.order_details values(1604, 2, 1106,  15,  29.00);

Insert into a_bkorders.order_headers    values(32892,  '2015-03-10', 272611);
   Insert into a_bkorders.order_details values(32892, 1, 2002,  5, 15.00);
   
Insert into a_bkorders.order_headers    values(32893, '2015-03-15', 200368);
   Insert into a_bkorders.order_details values(32893, 1, 1689,  1,  55.19);

Insert into a_bkorders.order_headers    values(32894,  '2015-03-18', 234138);
   Insert into a_bkorders.order_details values(32894, 1, 1894,  1,  35.99);

Insert into a_bkorders.order_headers    values(32895,  '2015-03-18', 218709);
   Insert into a_bkorders.order_details values(32895, 1, 1689,  1,  55.19);
 
Insert into a_bkorders.order_headers    values(1027,  '2015-03-18', 234709);
   Insert into a_bkorders.order_details values(1027, 1, 2001,  21,  49.99);
   Insert into a_bkorders.order_details values(1027, 2, 1077,  22,  10.99);   
   
Insert into a_bkorders.order_headers    values(1004,  '2015-03-18', 221297);
   Insert into a_bkorders.order_details values(1004, 1, 1106,  2,  18.25);

Insert into a_bkorders.order_headers    values(32896, '2015-03-18', 218709);
   Insert into a_bkorders.order_details values(32896, 1, 1894,  1,  35.99);

Insert into a_bkorders.order_headers    values(1028,  '2015-03-20', 234709);
   Insert into a_bkorders.order_details values(1028, 1, 2001,  1,  19.78);
   Insert into a_bkorders.order_details values(1028, 2, 2002, 22, 40.00);
   Insert into a_bkorders.order_details values(1028, 3, 2004,  1,  49.95);
   Insert into a_bkorders.order_details values(1028, 4, 2006,  1,  46.95);

Insert into a_bkorders.order_headers    values(1661,  '2015-03-15', 261502);
   Insert into a_bkorders.order_details values(1661, 1, 1103,  97,  2.00);
   
Insert into a_bkorders.order_headers    values(1030,  '2015-03-22', 234709);
   Insert into a_bkorders.order_details values(1030, 1, 1279,  1,  40.49);

Insert into a_bkorders.order_headers    values(1035,  '2015-03-22', 221297);
   Insert into a_bkorders.order_details values(1035, 1, 1689,  1,  55.19);

Insert into a_bkorders.order_headers    values(1039,  '2015-03-22', 212921);
   Insert into a_bkorders.order_details values(1039, 1, 1448,  1,  30.00);
   Insert into a_bkorders.order_details values(1039, 2, 1162,  2,  34.95);
   
Insert into a_bkorders.order_headers    values(1040,  '2015-03-28', 263119);
   Insert into a_bkorders.order_details values(1040, 1, 2025,  560,  39.00);
   Insert into a_bkorders.order_details values(1040, 2, 2018,  2,  49.99); 

Insert into a_bkorders.order_headers    values(31884,  '2015-03-22', 290298);
   Insert into a_bkorders.order_details values(31884, 1, 1278,  1,  48.00);
   Insert into a_bkorders.order_details values(31884, 2, 1199,  9,  17.99);

Insert into a_bkorders.order_headers    values(31885,  '2015-03-22', 217796);
   Insert into a_bkorders.order_details values(31885, 1, 1448, 50,  25.00);

Insert into a_bkorders.order_headers    values(31889,  '2015-03-22', 227105);
   Insert into a_bkorders.order_details values(31889, 1, 1109,  18,  50.60);

Insert into a_bkorders.order_headers    values(22806,  '2015-03-23', 239427);
   Insert into a_bkorders.order_details values(22806, 1, 1107,  1,  25.00);
   
Insert into a_bkorders.order_headers    values(22807,  '2015-03-23', 224038);
   Insert into a_bkorders.order_details values(22807, 1, 1175,  1,  34.99);
   
Insert into a_bkorders.order_headers    values(22808,  '2015-03-24', 290298);
   Insert into a_bkorders.order_details values(22808, 1, 1182,  1,  45.00);
   
Insert into a_bkorders.order_headers    values(22809,  '2015-03-25', 239427);
   Insert into a_bkorders.order_details values(22809, 1, 1104,  5,  45.00);
   
Insert into a_bkorders.order_headers    values(22810,  '2015-03-25', 218709);
   Insert into a_bkorders.order_details values(22810, 1, 1678,  5,  49.99);
   Insert into a_bkorders.order_details values(22810, 2, 1162,  5,  35.00);

Insert into a_bkorders.order_headers    values(32897,  '2015-03-22', 261502);
   Insert into a_bkorders.order_details values(32897, 1, 1110,  2,  50.00);   

Insert into a_bkorders.order_headers    values(32898,  '2015-03-22', 261502);
   Insert into a_bkorders.order_details values(32898, 1, 2006,  3,  20.00);
   
Insert into a_bkorders.order_headers    values(1005,  '2015-03-28', 290298);
   Insert into a_bkorders.order_details values(1005, 1, 1142,  2,  42.45);
   Insert into a_bkorders.order_details values(1005, 2, 1107,  4,  21.50);

Insert into a_bkorders.order_headers    values(1006,  '2015-03-28', 208950);
   Insert into a_bkorders.order_details values(1006, 1, 1103, 10, 10.95);  
   
Insert into a_bkorders.order_headers    values(32899,  '2015-03-29', 261502);
   Insert into a_bkorders.order_details values(32899, 1, 1128, 50, 25.00);
   
Insert into a_bkorders.order_headers    values(32800,  '2015-03-29', 217796);
   Insert into a_bkorders.order_details values(32800, 1, 1128, 50, 25.00);
   
Insert into a_bkorders.order_headers    values(22811,  '2015-03-30', 261502);
   Insert into a_bkorders.order_details values(22811, 1, 1478,  5,  45.00);
   
Insert into a_bkorders.order_headers    values(22812,  '2015-03-31', 239427);
   Insert into a_bkorders.order_details values(22812, 1, 1357,  50,  26.00);
   Insert into a_bkorders.order_details values(22812, 2, 1425,  50,  28.09);
      
Insert into a_bkorders.order_headers    values(22813,  '2015-03-31', 239427);
   Insert into a_bkorders.order_details values(22813, 1, 1175,  1,  45.00);
   Insert into a_bkorders.order_details values(22813, 2, 1180,  1,  49.99);
   Insert into a_bkorders.order_details values(22813, 3, 1182,  1,  45.00);
   Insert into a_bkorders.order_details values(22813, 4, 1184,  1,  49.99);
   Insert into a_bkorders.order_details values(22813, 5, 1185,  1,  49.99);
   Insert into a_bkorders.order_details values(22813, 6, 1188,  1,  49.99);
   Insert into a_bkorders.order_details values(22813, 7, 1877,  1,  45.00);
   Insert into a_bkorders.order_details values(22813, 8, 1175,  1,  34.90);
   Insert into a_bkorders.order_details values(22813, 9, 1425,  1,  25.90);
  
  
 Insert into a_bkorders.order_headers    values(22820,  '2015-03-19', 227105);
   Insert into a_bkorders.order_details values(22820, 1, 1628,  1,   32.00);
   Insert into a_bkorders.order_details values(22820, 2, 1629,  1,   19.95);

Insert into a_bkorders.order_headers    values(22821,  '2015-03-19', 222477);
   Insert into a_bkorders.order_details values(22821, 1, 1258,  1,  44.99);

Insert into a_bkorders.order_headers    values(22825,  '2015-03-21', 267780);
   Insert into a_bkorders.order_details values(22825, 1, 1619,  2,  35.00);
   Insert into a_bkorders.order_details values(22825, 2, 1128,  1,  46.20); 
   Insert into a_bkorders.order_details values(22825, 3, 1162,  1,  32.45);

Insert into a_bkorders.order_headers    values(31830,  '2015-03-21', 227105);
   Insert into a_bkorders.order_details values(31830, 1, 1161,  3,  35.00);
   Insert into a_bkorders.order_details values(31830, 2, 1142,  100,  34.95);

Insert into a_bkorders.order_headers    values(31837,  '2015-03-21', 222477);
   Insert into a_bkorders.order_details values(31837, 1, 1128,  50,   46.95);

Insert into a_bkorders.order_headers    values(31866,  '2015-03-26', 290298);
   Insert into a_bkorders.order_details values(31866, 1, 2001,  100,  39.00);
   Insert into a_bkorders.order_details values(31866, 2, 1101,  5,    59.99);
   Insert into a_bkorders.order_details values(31866, 3, 1142,  5,    39.00);

Insert into a_bkorders.order_headers    values(32845,  '2015-03-27', 227105);
   Insert into a_bkorders.order_details values(32845, 1, 1162,  2,    35.00);
   
Insert into a_bkorders.order_headers    values(32849,  '2015-03-27', 290298);
   Insert into a_bkorders.order_details values(32849, 1, 1401,  50,   46.95);
   Insert into a_bkorders.order_details values(32849, 2, 2001,  100,  39.00);
   Insert into a_bkorders.order_details values(32849, 3, 1128,  5, 25.00);
   Insert into a_bkorders.order_details values(32849, 4, 1103,  1 , 10.95);    

 