CREATE TABLE IF NOT EXISTS imdb
(
    CREATE TABLE película
    (
        film_id INT(11) NOT NULL AUTO_INCREMENT,
        titulo VARCHAR(30) NOT NULL, 
        descripcion TEXT(300),
        lanzamiento_anio DATE,
        CONSTRAINT film_pk PRIMARY KEY(film_id)
    );
    CREATE TABLE actor
    (
        actor_id INT(11) NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(30) NOT NULL, 
        last_name VARCHAR(30),
        CONSTRAINT actor_pk PRIMARY KEY(actor_id)
    );
    CREATE TABLE film_actor
    (
        film_id int(11) NOT NULL,
        actor_id int(11) NOT NULL
        --CONSTRAINT fk_actor FOREIGN KEY (actor_id)  REFERENCES actor(actor_id),
        --CONSTRAINT fk_film FOREIGN KEY (film_id)  REFERENCES película(film_id)
    );
);
ALTER TABLE película, actor ADD last_update VARCHAR(30);

ALTER TABLE film_actor ADD CONSTRAINT fk_actor FOREIGN KEY (actor_id)  REFERENCES actor(actor_id);

ALTER TABLE film_actor ADD CONSTRAINT fk_film FOREIGN KEY (film_id)  REFERENCES película(film_id);

INSERT INTO 