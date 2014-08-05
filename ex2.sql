CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age INTEGER,
	dead INTEGER
);

CREATE TABLE person_pet (
	person_id INTEGER,
	pet_id INTEGER
);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zero", "Linux", 21);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "CC", "German Shepherd", 7, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zero";

SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE
	pet.id = person_pet.pet_id AND
	person_pet.person_id = person.id AND
	person.first_name = "Zero";

SELECT name, age FROM pet WHERE dead = 1;

DELETE FROM pet WHERE dead = 1;

SELECT * FROM pet;

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

SELECT * FROM pet;
