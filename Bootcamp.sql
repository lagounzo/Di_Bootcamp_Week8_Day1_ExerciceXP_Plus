
-- CREATE table students(

	id SERIAL PRIMARY KEY,
	last_name varchar(50) not null,
	first_name varchar(50) not null,
	birth_date date not null
);


-- id_students,last_name_students,first_name_students,birth_date_students


INSERT INTO students(first_name,last_name,birth_date) 
values ('Marc','Benichou','02/11/1998'),
('Yoan','Cohen','03/12/2010'),
('Lea','Benichou','27/07/1987'),
('Amelia','Dux','07/04/1996'),
('David','Grez','14/06/2003'),
('Omer','Simpson','03/10/1980'); 

-- Récupérer toutes les données de la table.

SELECT * from students;

-- Récupérer tous les prénoms et noms de famille des étudiants .

SELECT first_name,last_name from students;

-- Récupérer l'étudiant dont l'id est égal à 2.
SELECT first_name,last_name from students where id = 2;

-- Récupérez l'élève dont le nom est Benichou ET le prénom est Marc.

SELECT first_name,last_name from students where first_name = 'Benichou' and last_name = 'Marc';

-- Récupérez les étudiants dont le nom de famille est Benichou OU dont le prénom est Marc.

SELECT first_name,last_name from students where first_name = 'Benichou' or last_name = 'Marc';

-- 4. Récupérez les étudiants dont les prénoms contiennent la lettre a .

SELECT first_name,last_name from students where first_name like '%a%';

-- 5. Récupérez les étudiants dont le prénom commence par la lettre a .

SELECT first_name,last_name from students where first_name ilike 'a%';

-- 6 Récupérer les étudiants dont les prénoms se terminent par la lettre a .

SELECT first_name,last_name from students where first_name ilike '%a';

--7. Récupérer les étudiants dont l'avant-dernière lettre de leur prénom est a (Exemple : Le a h).

SELECT first_name,last_name from students where (right(first_name, 2) like 'a%' )

-- Récupérer les étudiants dont les identifiants sont égaux à 1 AND 3 .

SELECT first_name,last_name from students where id = 1 AND id = 3 ;

-- Récupérez les étudiants dont la date de naissance est égale ou postérieure au 01/01/2000 (afficher toutes leurs informations).

SELECT * from students where (birth_date >= '01/01/2006');

