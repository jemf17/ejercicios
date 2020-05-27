SELECT c2.country, COUNT(c3.city) AS city
FROM country c2 , (SELECT c.city ,c.country_id FROM city c ) c3
WHERE c3.country_id = c2.country_id
GROUP BY country;

SELECT c2.country, COUNT(c3.city) AS city
FROM country c2 , (SELECT c.city ,c.country_id FROM city c ) c3
WHERE c3.country_id = c2.country_id
GROUP BY country
HAVING COUNT(c3.city) > 9
ORDER BY COUNT(c3.city) DESC;

SELECT first_name , last_name , address, COUNT(*) AS total_pl, (SELECT SUM(amount) FROM payment p2 WHERE p2.customer_id = c.customer_id) AS plata_gastada
FROM customer c , rental r2 , address a
WHERE c.address_id = a.address_id 
AND r2.customer_id = c.customer_id
GROUP BY r2.customer_id 
ORDER BY total_pl;

SELECT c.name ,AVG(`length`) AS promedio FROM film f, category c , film_category fc
WHERE f.film_id = fc.film_id AND c.category_id = fc.category_id 
GROUP BY fc.category_id 
ORDER BY 2 DESC 

SELECT f.rating , SUM(p.amount) AS plata FROM film f, inventory i , rental r , payment p
WHERE f.film_id = i.film_id AND i.inventory_id = r.inventory_id AND r.rental_id = p.rental_id 
GROUP BY f.rating 

