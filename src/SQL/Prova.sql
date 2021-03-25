CREATE DATABASE cine_uniamerica;
USE cine_uniamerica;

CREATE TABLE cine(
	cine_id 			BIGINT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cine_name 			VARCHAR(256)	NOT NULL,
    openin_hour 		DATETIME		NOT NULL,
    close_hour			DATETIME		NOT NULL,
    total_cine_chairs	INT 			NOT NULL
);

CREATE TABLE movie_theater(
	movie_theater_id	BIGINT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    movie_theater_name 	VARCHAR(256)	NOT NULL,
    total_thater_chairs	INT 			NOT NULL,  
    cine_id				BIGINT 			NOT NULL,
    
    FOREIGN KEY (cine_id) REFERENCES cine (cine_id)
);

CREATE TABLE chair(
	chair_id			BIGINT 	NOT NULL PRIMARY KEY AUTO_INCREMENT,
	is_free				BOOLEAN,
    movie_theater_id	BIGINT 	NOT NULL,
    
    FOREIGN KEY (movie_theater_id) REFERENCES movie_theater (movie_theater_id)
);

CREATE TABLE session(
	session_id				BIGINT 		NOT NULL PRIMARY KEY AUTO_INCREMENT,
	session_start_hour		DATETIME 	NOT NULL,
    session_end_hour		DATETIME 	NOT NULL,
    movie_id 				BIGINT 		NOT NULL,
    movie_theater_id			BIGINT 		NOT NULL,
    
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
    FOREIGN KEY (movie_theater_id) REFERENCES movie_theater (movie_theater_id)
);


CREATE TABLE movie(
	movie_id		BIGINT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
	movie_name 		VARCHAR(256)	NOT NULL,
    movie_duration 	TIME			NOT NULL,
    age_rating		INT 			
	
);

CREATE TABLE category(
	category_id 	BIGINT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
	category_name	VARCHAR(256) 	NOT NULL
);

CREATE TABLE movie_category(
	movie_category_id  	BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id			BIGINT NOT NULL,
    movie_id			BIGINT NOT NULL,
    
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (movie_id)	REFERENCES	movie	(movie_id)	
);


INSERT INTO cine (cine_name, openin_hour, close_hour, total_cine_chairs)
VALUES ('CINE UNIAMÉRICA', '2021/03/24 12:00:00', '2021/03/24 20:00:00', '200');

INSERT INTO movie_theater (movie_theater_name, total_thater_chairs, cine_id)
VALUES ('SALA 1', '100', '1');

INSERT INTO movie_theater (movie_theater_name, total_thater_chairs, cine_id)
VALUES ('SALA 2', '100', '1');

INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('1', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '2');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '1');
INSERT INTO chair (is_free, movie_theater_id) VALUES ('0', '1');

SELECT c.cine_name c, a.movie_theater_name FROM cine c INNER JOIN movie_theater a ON a.cine_id = c.cine_id;

SELECT a.movie_theater_name, c.is_free FROM chair c INNER JOIN movie_theater a ON a.movie_theater_id = c.movie_theater_id WHERE c.is_free = 1;

