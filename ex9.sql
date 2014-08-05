UPDATE person SET first_name = "Guy"
	WHERE first_name = "Zero";

UPDATE pet SET name = "Fancy Pants"
	WHERE id=0;


SELECT * FROM person;

UPDATE person SET first_name = "Zero"
	WHERE id=0;

SELECT * FROM person;

SELECT * FROM pet;
