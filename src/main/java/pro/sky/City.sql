CREATE TABLE employee (id BIGSERIAL NOT NULL PRIMARY KEY,
                       first_name VARCHAR(60) NOT NULL,
                       last_name VARCHAR(60) NOT NULL,
                       gender VARCHAR(6),
                       age INT NOT NULL);

INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (5, 'Masha', 'Terehova', 'female', 27);
INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (5, 'Mikhail', 'Bender', 'male', 28);
INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (1, 'Alex', 'Murphy', 'male', 31);
INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (2, 'Liu', 'Feng', 'male', 28);
INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (2, 'Izumi', 'Saito', 'male', 26);

SELECT * FROM employee;

CREATE TABLE city (city_id BIGSERIAL NOT NULL PRIMARY KEY,
                   city_name VARCHAR(60) NOT NULL);
ALTER TABLE employee ADD COLUMN city_id INT;
INSERT INTO city (city_name) VALUES ('Beijing');
INSERT INTO city (city_name) VALUES ('Tokyo');
INSERT INTO city (city_name) VALUES ('Seoul');
INSERT INTO city (city_name) VALUES ('Vladivostok');
INSERT INTO city (city_name) VALUES ('Ulaanbaatar');
ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

UPDATE employee SET city_id = 1 WHERE id = 1;
UPDATE employee SET city_id = 2 WHERE id = 2;
UPDATE employee SET city_id = 3 WHERE id = 3;
UPDATE employee SET city_id = 4 WHERE id = 4;
UPDATE employee SET city_id = 5 WHERE id = 5;

SELECT first_name AS Name, last_name AS Surname, city_name AS City FROM employee INNER JOIN city ON employee.city_id = city.city_id;
UPDATE employee SET city_id = 4 WHERE id = 5;
SELECT city_name, first_name AS Name, last_name AS Surname FROM city LEFT JOIN employee ON city.city_id = employee.city_id;
UPDATE employee SET city_id = null WHERE id = 5;
SELECT city_name, first_name AS Name, last_name AS Surname FROM city FULL OUTER JOIN employee ON city.city_id = employee.city_id;





