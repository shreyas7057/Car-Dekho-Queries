create schema cars;

use cars;

-- reading the cars data
select * from car_dekho;

-- get count to total records ie total cars
select count(*) from car_dekho;

--  how many cars will be avaiable in 2023
select count(*) from car_dekho where year=2023;

--  how many cars will be avaiable in 2020,2021,2022
select count(*) from car_dekho where year=2020;
select count(*) from car_dekho where year=2021;
select count(*) from car_dekho where year=2022;
# OR
# method 2 use of group by
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

# print total of all cars by year
select year,count(*) from car_dekho group by year;

# how many diesel cars will be there in 2020
select count(*) from car_dekho where year=2020 and fuel="Diesel";

# how many petrol cars will be there in 2020
select count(*) from car_dekho where year=2020 and fuel="Petrol";

# print all fuel cars come by all years
select year,count(*) from car_dekho where fuel='Petrol' group by year;
select year,count(*) from car_dekho where fuel='Diesel' group by year;
select year,count(*) from car_dekho where fuel='CNG' group by year;

# which years has more than 100 cars
select year,count(*) from car_dekho group by year having count(*) > 100;

# all cars count details between year 2015 to 2023 
select count(*) from car_dekho where year between 2015 and 2023;

# all car details between 2015 to 2023 
select * from car_dekho where year between 2015 and 2023;
