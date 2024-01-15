use mavenmovies;
-- Differnce between primary and foreign keys- primary key uniquely identifes the table and cannot be null whereas the foreign key establishes relation between relational tables.
-- List all details of actors
select * from actor;

-- list all customer infromation-
select * from customer;

-- list different countries
select * from country;
select distinct country from country;

-- List all active customers-
select active from customer;
select customer_id, store_id, first_name, last_name, email from customer where active=1;

-- List of all rental ids for customer with id 1-
select * from rental;
select rental_id, customer_id from rental where customer_id=1;

-- Display all the films whose rental duration is greater than 5
select film_id, title, rental_duration from film where rental_duration >5;

-- List the total number of films whose replacement cost is greater then $15 and less than $20
Select * from film;
select count(*) from film where replacement_cost> 15 and replacement_cost< 20;
select count(*) from film where replacement_cost between 15 and 20;

-- Display the count of unique first names of actors.
select count( distinct first_name) from actor;

-- Display the first 10 records from the customer_table-
select * from customer limit 10;

-- Display the first 3 records from the customer table whose first name start with b
select * from customer where first_name like "b%" limit 3;

-- Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating = 'G' limit 5;

-- Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";

-- Find all customers whose first name ends with "a"
select * from customer where first_name like "%a";

-- Display the list of first 4 cities which start and end with ‘a’
select * from city where city like "a%a" limit 4;

-- Find all customers whose first name have "NI" in any position
select * from customer where first_name like "%ni%";
select first_name from customer where first_name like "%ni%";

-- Find all customers whose first name have "r" in the second position
select * from customer where first_name like "_r%";

-- Find all customers whose first name starts with "a" and are at least 5 characters in length
select *from customer where first_name like "a____%";

-- Find all customers whose first name starts with "a" and ends with "o"
select first_name from customer where first_name like "a%O";

-- Get the films with pg and pg-13 rating using IN operator
select * from film;
select title from film where rating in ( 'PG','PG-13' );

-- Get the films with length between 50 to 100 using between operator
Select * from film where length between 50 and 100;

-- Get the top 50 actors using limit operator
select * from actor;
select * from actor limit 50;

-- Get the distinct film ids from inventory table
select distinct film_id from inventory;