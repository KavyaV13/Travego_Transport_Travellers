
#2.(Medium) Perform read operation on the designed table created in the above task using SQL script. 
# a) How many females and how many male passengers travelled for a minimum distance of 600 KMs? 
select gender, count(gender) as "# Male:Female" from passengers where distance >=600 group by gender;
  
 # b)Find the minimum ticket price for Sleeper Bus.
 select min(price) as `Minimum-Sleeper-Price` from price where Bus_Type = "Sleeper";
 
 # c) Select passenger names whose names start with character 'S'.
 select * from passengers where Passenger_name like 'S%';
 
 # d) Calculate price charged for each passenger displaying Passenger name, Boarding City,Destination City, Bus_Type, Price in the output.
select Passenger_name , Boarding_City , Destination_City , p1.Bus_Type , p2.Price 
from 
passengers p1 
left join 
price p2 
on p1.Bus_Type = p2.Bus_Type and p1.Distance = p2.Distance ;

# e) What are the passenger name/s and his/her ticket price who travelled in the Sitting bus for a distance of 1000 KMs.
select p1.Passenger_name, p1.Boarding_city, p1.Destination_city, p1.Bus_type, p2.Price 
from passengers p1, price p2 
where p1.Distance = 1000 and p1.Bus_type = 'Sitting' and p2.Distance = 1000 and p2.Bus_type = 'Sitting';
# No Passenger where travelled in the Sitting bus for a distance of 1000 KM s.

# f) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?

select Price, Bus_Type
from  price
where Distance = (select Distance from `Passengers` where Boarding_City="Panaji" and Destination_City="Bengaluru" ) ;

# g) List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order.:
select distinct distance from passengers order by Distance desc;

# 1h) Display the passenger name and percentage of distance travelled by that passenger from the total distance travelled by all passengers without using user variables
select Passenger_name , Distance , Distance * 100.0 / (select sum(Distance) from Passengers) as "%" from Passengers;
