-- Display the unique inventory rented
SELECT COUNT (DISTINCT inventory_id) FROM rental;

-- Total number of inventory rented
SELECT COUNT (*) FROM rental;

--List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order
SELECT f.title, a.first_name, a.last_name
FROM film AS f
LEFT JOIN film_actor AS fa
ON f.film_id = fa.film_id
LEFT JOIN actor AS a
on fa.actor_id = a.actor_id
WHERE a.first_name = 'Dan' AND (a.last_name = 'Torn' OR a.last_name ='Streep')
ORDER BY f.title

-- display all comedy films of actors with last name starting in D arranged by full name
SELECT f.title, cat."name", CONCAT(a.last_name, ', ', a.first_name) AS actor_full_name
FROM film AS f
LEFT JOIN film_actor AS a_id
ON f.film_id = a_id.film_id
LEFT JOIN actor AS a
ON a_id.actor_id = a.actor_id
LEFT JOIN film_category AS f_cat
ON f.film_id = f_cat.film_id
LEFT JOIN category AS cat
ON f_cat.category_id = cat.category_id
WHERE
	cat.name = 'Comedy' AND
	a.last_name LIKE 'D%'
ORDER BY actor_full_name