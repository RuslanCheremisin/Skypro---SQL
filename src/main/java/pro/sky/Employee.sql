#Task1

INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (4, 'Masha', 'Terehova', 'female', 27);

INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (5, 'Mikhail', 'Bender', 'male', 28);


INSERT INTO employee (id, first_name, last_name, gender, age)
VALUES (1, 'Alex', 'Murphy', 'male', 31);

SELECT first_name AS Имя, last_name AS Фамилия FROM employee;

SELECT first_name AS Имя, last_name AS Фамилия, gender AS пол, age AS Возраст FROM employee WHERE age BETWEEN 30 AND 50;

SELECT first_name AS Имя, last_name AS Фамилия, gender AS пол, age AS Возраст FROM employee ORDER BY Фамилия DESC;

SELECT first_name AS Имя, last_name AS Фамилия, gender AS пол, age AS Возраст FROM employee WHERE first_name NOT LIKE '____';

#Task2
UPDATE employee SET first_name = 'Alex' WHERE first_name = 'Mikhail';
UPDATE employee SET first_name = 'Masha' WHERE first_name = 'Natasha';

SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст FROM employee GROUP BY Имя;

SELECT first_name, MIN(age) FROM employee GROUP BY first_name;

SELECT first_name, MIN(age) FROM employee GROUP BY first_name HAVING count(first_name)>1 ORDER BY first_name;