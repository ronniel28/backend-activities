-- Display the number unique inventoey rented
SELECT COUNT (DISTINCT inventory_id) FROM rental

-- Total of number inventory rented
SELECT COUNT(*) FROM rental

-- List all films of Dan Torn and Dan Streep. Sort by film_title alphabetical order
SELECT f.title, a.first_name, a.last_name
FROM film AS f
LEFT JOIN film_actor AS fa
ON f.film_id = fa.film_id
LEFT JOIN actor AS a
ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Dan' AND (a.last_name = 'Torn' OR a.last_name = 'Streep')
ORDER BY f.title

--List all Comedy films of all actors whose last name starts at D. Sort by actos's full name alphabetical order
SELECT f.title, c.name, CONCAT( a.first_name,' ',a.last_name) AS actors_full_name
FROM film AS f
LEFT JOIN film_actor as fa
ON f.film_id = fa.film_id
LEFT JOIN actor as a
ON fa.actor_id = a.actor_id
LEFT JOIN film_category as fc
ON f.film_id = fc.film_id
LEFT JOIN category as c
ON fc.category_id = c.category_id
WHERE
 c.name = 'Comedy' AND a.last_name LIKE 'D%'
 ORDER BY a.last_name