use entri_d42;
create table Country (id int primary key unique,Country_name varchar (25),Population bigint,Area decimal(10,2));
create table Persons (id int primary key , Fname varchar (20),Lname varchar(20),Population bigint,Rating smallint,Country_id int unique,Country_name varchar(25));
insert into Country (id ,Country_name ,Population ,Area ) values
(1, 'India', 1428627662, 3287263),
  (2, 'China', 1425650000, 9596961),
  (3, 'United States', 338290000, 9372610),
  (4, 'Indonesia', 275569079, 1904569),
  (5, 'Pakistan', 235822022, 881913),
  (6, 'Brazil', 215313000, 8515767),
  (7, 'Nigeria', 218541000, 923768),
  (8, 'Bangladesh', 172958000, 147570),
  (9, 'Russia', 144526000, 17098246),
  (10, 'Mexico', 131222000, 1964375);
insert into Persons (id , Fname ,Lname ,Population ,Rating ,Country_id ,Country_name ) values
(1, 'Aishwarya', 'Rai Bachchan',1428627662, 4.5, 1, 'India'),
  (2, 'Jackie', 'Chan', 1425650000, 4.8, 2, 'China'),
  (3, 'Dwayne', 'Johnson',338290000, 4.7, 3, 'United States'),
  (4, 'Neymar', 'Santos Júnior', 218541000, 4.6, 7, 'Nigeria'),
  (5, 'Lionel', 'Messi',172958000, 4.9, 8, 'Bangladesh'),
  (6, 'Cristiano', 'Ronaldo',  144526000, 4.8, 9, 'Russia'),
  (7, 'Selena', 'Gomez', 131222000, 4.6, 10, 'Mexico'),
  (8,'lal','sik',215313000,3.8,6,'Brazil'),
  (9,'faik','khan',235822022,4.0,5,'Pakistan'),
  (10,'zaman','aik',275569079,4.1,4,'Indonesia');
  select distinct country_name from Persons; -- list the distinct country name from table Persons  (1)
  select * from Country ;
  select * from Persons;
  select fname as First_name ,lname as Last_name from persons; -- full name of the person (2)
  select fname as First_name ,lname as Last_name from persons where Rating >4; -- (3)
  select Country_name from Country where Population >1000000 ; (4)
  select fname as First_name ,lname as Last_name from Persons where Country_name="United States" and Rating > 4.5 ;  -- (5)
  select Fname as First_name , lname as Last_name from Persons where Country_name in ("Brazil","Pakistan","Indonesia") ; -- in Brazil,Pakistan,Indonesia(7)
   select Fname as First_name , lname as Last_name from Persons where Country_name is NULL ;-- (6)
    select Fname as First_name , lname as Last_name from Persons where Country_name not in ("Nigeria","Pakistan","india") ; -- not in Pakistan,India,Nigeria (8)
    select Country_name from Country where Population between 500000 and 2000000 ;-- (9)
    select Country_name from Persons where Country_name not like "c%" ;-- (10)
  
  
  