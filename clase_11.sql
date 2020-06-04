SELECT f.title 
FROM film f
LEFT JOIN inventory i
ON f.film_id = i.film_id 
WHERE i.film_id IS NULL

SELECT f.title, i.inventory_id 
FROM film f 
INNER JOIN inventory i
ON f.film_id = i.film_id 
LEFT JOIN rental r 
ON i.inventory_id = r.inventory_id 
WHERE r.rental_id IS NULL

SELECT c.first_name, c.last_name, c.store_id,f.title ,p.payment_date, p.last_update 
FROM customer c, film f , inventory i , rental r , payment p
WHERE c.customer_id = p.customer_id 
AND p.rental_id = r.rental_id 
AND r.inventory_id = i.inventory_id 
AND i.film_id = f.film_id 
ORDER BY 3, 2

SELECT s.first_name ,s.last_name , SUM(p.amount) AS plata FROM payment p 
INNER JOIN staff s USING (staff_id)
INNER JOIN store s2 USING (store_id)
INNER JOIN address a2 ON s2.address_id = a2.address_id 
INNER JOIN city c2 USING (city_id)
INNER JOIN country c USING (country_id)
GROUP BY s.first_name, s.last_name 


