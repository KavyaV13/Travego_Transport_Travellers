create database Travego ;
use Travego ;


create table Passengers (
Passenger_id int,
Passenger_name varchar(20),
category varchar(20),
Gender varchar(20),
boarding_city varchar(20),
destination_city varchar(20),
distance int,
bus_type varchar(20)
);

Insert into Passengers (Passenger_id,Passenger_name,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values
(1,"Sejal" , "AC" , "F" , "Bengaluru" , "Chennai" , 350 , "Sleeper"),
(2,"Anmol" , "Non-AC" , "M" , "Mumbai" , "Hyderabad" , 700 , "Sitting"),
(3,"Pallavi" , "AC" , "F" , "Panaji" , "Bengaluru" , 600 , "Sleeper"),
(4,"Khushboo" , "AC" , "F" , "Chennai" , "Mumbai" , 1500 , "Sleeper"),
(5,"Udit" , "Non-AC" , "M" , "Trivandrum" , "Panaji" , 1000 , "Sleeper"),
(6,"Ankur" , "AC" , "M" , "Nagpur" , "Hyderabad" , 500 , "Sitting"),
(7,"Hemant" , "Non-AC" , "M" , "Panaji" , "Mumbai" , 700 , "Sleeper"),
(8,"Manish" , "Non-AC" , "M" , "Hyderabad" , "Bengaluru" , 500 , "Sitting"),
(9,"Piyush" , "AC" , "M" , "Pune" , "Nagpur" , 700 , "Sitting");


create table Price(
  Bus_Type varchar (10) ,
  Distance int , 
  Price int
  );
  

Insert into Price( Bus_Type, Distance,Price) values
("Sleeper" , 350 , 770),
("Sleeper" , 500 , 1100),
("Sleeper" , 600 , 1320),
("Sleeper" , 700 , 1540),
("Sleeper" , 1000 , 2200),
("Sleeper" , 1200 , 2640),
("Sleeper" , 1500 , 2700),
("Sitting" , 500 , 620),
("Sitting" , 600 , 744),
("Sitting" , 700 , 868),
("Sitting" , 1000 , 1240),
("Sitting" , 1200 , 1488),
("Sitting" , 1500 , 1860);

