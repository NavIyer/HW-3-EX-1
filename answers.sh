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


### Joins ###
# 1
SELECT employees.Name, employees.Company, companies.Date FROM employees JOIN companies ON employees.Company=companies.Name;

# 2
SELECT employees.Name FROM employees JOIN companies ON employees.Company=companies.Name WHERE companies.Date < 2000;

# 3
SELECT companies.Name FROM companies JOIN employees ON employees.Company=companies.Name AND employees.Role='Graphic Designer';


### Count & Filter ###
# 1
select Name FROM students WHERE Points=(SELECT MAX(Points) FROM students);

# 2
select AVG(Points) FROM students;

# 3
select COUNT(Name) FROM students WHERE Points=500;

# 4
select Name FROM students WHERE Name LIKE '%s%';

# 5
select Name FROM students ORDER BY Points DESC;

