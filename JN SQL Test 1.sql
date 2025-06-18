Create Database JN_Test

Use JN_Test

-- Create Table of List 1--
CREATE TABLE List1(
WorkerID INT PRIMARY KEY,
WorkerFName VARCHAR(50),
WorkerLName VARCHAR(50),
WorkerResidence VARCHAR(50),
Age INT CHECK (Age>=0 AND Age <=99),
Phone INT
);

-- Insert data to table --
INSERT INTO List1(WorkerID, WorkerFName, WorkerLName, WorkerResidence, Age, Phone)
VALUES (1, 'James', 'Jones', 'SCD', '22', '02102901111'),
	   (2, 'Emma', 'East', 'Pitcaithly', '22', '02102902222'),
	   (3, 'Kyle', 'Kolt', 'Pitcaithly', '20', '02102903333'),
	   (4, 'Thomas', 'Tennyson', 'Pitau', '25', '02102904444'),
	   (5, 'Irene', 'Inglewood', 'St Thomas', '21', '02102905555'),
	   (6, 'Adam', 'Adamson', 'SCD', '23', '02102906666'),
	   (7, 'Benjamin', 'Bell', 'Mangopare', '22', '02102907777'),
	   (8, 'Caitlyn', 'Connor', 'Te Tokotoru', '24', '02102908888');

--Update/Change table data List 1 --
UPDATE List1
SET Phone = '02102901234'
WHERE WorkerID = 1;

-- Select all/show table for List 1 --
SELECT * FROM List1

-- Ascending/Descending Sort --
SELECT * FROM List1
ORDER BY WorkerFName ASC

SELECT * FROM List1
ORDER BY WorkerFName DESC

--WHERE Sort --
SELECT * FROM List1
WHERE WorkerResidence = 'Pitcaithly';

--AND/OR Combine --
SELECT * FROM List1
WHERE WorkerResidence = 'SCD' AND Age = '22';

SELECT * FROM List1
WHERE Age = '22' OR WorkerLName = 'Kolt';

-- Delete Table --
DROP TABLE List1