-- 2.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3.
SELECT title FROM sakila.film;
SELECT name FROM sakila.language INNER JOIN sakila.film ON language.language_id = film.language_id;
SELECT first_name FROM sakila.staff;

-- 4
SELECT distinct release_year FROM sakila.film;

-- 5
SELECT COUNT(*) FROM sakila.store;
SELECT COUNT(*) FROM sakila.staff;

-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) FROM sakila.inventory;
SELECT COUNT(*) FROM sakila.rental;

-- Determine the number of distinct last names of the actors in the database.

SELECT DISTINCT last_name FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT * FROM sakila.film ORDER BY length DESC LIMIT 10;

-- 7. Use filtering techniques in order to :
-- Retrieve all actors with the first name "SCARLETT"
SELECT * FROM sakila.actor WHERE first_name = "SCARLETT";
-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film WHERE title LIKE "%ARMAGEDDON%" AND length > 100;
-- Determine the number of films that include Behind the Scenes content
SELECT * FROM sakila.film WHERE special_features LIKE "%Behind the Scenes%";
