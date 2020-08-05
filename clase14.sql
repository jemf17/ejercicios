#ya esta el primero 
SELECT CONCAT(first_name ," ", last_name ) AS nombre, city , country FROM customer c 
INNER JOIN address USING(address_id)
INNER JOIN city USING(city_id)
INNER JOIN country USING(country_id)
WHERE country = "Argentina"


#termine la dos capoeria 
SELECT title, name, CASE 
WHEN rating = "G" THEN "Gneral Audiences"
WHEN rating = "PG" THEN "Parental Guidance Suggested"
WHEN rating = "PG-13" THEN "Parents Strongly Cautioned"
WHEN rating = "R" THEN "Restricted"
ELSE "Adults Only"
END AS raiting
FROM film f
INNER JOIN `language` USING(language_id)

#ya esta el tercero
SELECT f.title, f.release_year , UPPER(CONCAT( a.first_name ,  ' ', a.last_name )) AS 'Actor'
FROM film f
JOIN film_actor fa USING(film_id)
JOIN actor a USING(actor_id)
WHERE CONCAT( a.first_name ,  ' ', a.last_name ) LIKE  UPPER('%ed guines%')



SELECT f.title, CONCAT( c.first_name ,  ' ', c.last_name ) AS 'Customer', r.rental_date , CASE 	WHEN r.return_date IS NULL THEN 'NO'
																				WHEN r.return_date = r.return_date THEN 'YES' END AS 'RETURNED'
FROM film f
JOIN inventory i USING(film_id)
JOIN rental r USING(inventory_id)
JOIN customer c USING(customer_id)
WHERE r.rental_date BETWEEN '2005-05-01 00:0:00' AND '2005-06-01 00:0:00'



SELECT  (CAST(f.description  AS CHAR))
FROM film f 

SELECT (CONVERT(f.description ,CHAR))
FROM film f 



NVL and ISNULL are not in MYSQL



SELECT IFNULL(NULL,'HOLA MUNDO'); // HOLA MUNDO
SELECT IFNULL('BUENAS', 'NOCHES'); // BUENAS



SELECT COALESCE(NULL, NULL, 'HOLA', NULL, 'MUNDO'); // HOLA
SELECT COALESCE(NULL, NULL, NULL, 'MUNDO', 'BUENAS'); // MUNDO




