### Basic Queries ###
# 1
SELECT Name FROM Students;

#2
SELECT * FROM Students WHERE Age > 30;

# 3
SELECT Name FROM Students WHERE Gender='F' AND Age=30;

# 4
SELECT Points FROM Students WHERE Name='Alex';

# 5
INSERT INTO Students VALUES(7, 'Naveen', '21', 'M', 100);

# 6
UPDATE Students SET Points=600 WHERE Name='Basma';

# 7
UPDATE Students SET Points=50 WHERE Name='Alex';


### Creating Table ###

CREATE TABLE graduates(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';





SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;