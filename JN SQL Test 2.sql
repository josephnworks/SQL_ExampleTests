Use JN_Test

--Create Table for List 2: GoodStoreEmployees--
CREATE TABLE GoodStoreEmployees(
WorkerID INT PRIMARY KEY,
WorkerFName VARCHAR(50),
WorkerLName VARCHAR(50),
WorkerAge INT CHECK (WorkerAge >= 0 AND WorkerAge <= 99),
WorkerPhone INT,
WorkerDepartment VARCHAR(50)
);

--Insert data to table --
INSERT INTO GoodStoreEmployees(WorkerID, WorkerFName, WorkerLName, WorkerAge, WorkerPhone, WorkerDepartment)
VALUES	(1001, 'Andrew', 'Arlott', '32', '02102901111', 'Bakery'),
		(1002, 'Benjamin', 'Benson', '28', '02102902222', 'Produce'),
		(1003, 'Cameron', 'Colson', '41', '02102903333', 'Butchery'),
		(1004, 'Dalia', 'Desmond', '35', '02102904444', 'Chill'),
		(1005, 'Emily', 'Elmore', '21', '02102905555', 'Checkouts'),
		(1006, 'Frank', 'Farro', '26', '02102906666', 'Grocery'),
		(1007, 'Gary', 'Gill', '36', '02102907777', 'Produce'),
		(1008, 'Harry', 'Hutchinson', '28', '02102908888', 'Frozen'),
		(1009, 'Ixia', 'Inglewood', '24', '02102909999', 'Checkouts'),
		(1010, 'Julie', 'Jackson', '44', '02102910000', 'Grocery'),
		(1011, 'Kyle', 'Kay', '30', '02102910001', 'Butchery'),
		(1012, 'Lindsay', 'Lockhart', '35', '02102910002', 'Produce'),
		(1013, 'Michael', 'Moore', '38', '02102910003', 'Frozen'),
		(1014, 'Natalie', 'Nixon', '21', '02102910004', 'Online'),
		(1015, 'Owen', 'Owens', '26', '02102910005', 'Grocery'),
		(1016, 'Patrick', 'Patrickson', '46', '02102910006', 'Deli'),
		(1017, 'Quinton', 'Quickenden', '34', '02102910007', 'Bakery'),
		(1018, 'Roxy', 'Rolleston', '27', '02102910008', 'Online'),
		(1019, 'Samantha', 'Smith', '23', '02102910009', 'Checkouts'),
		(1020, 'Thomas', 'Tall', '30', '02102910010', 'Grocery'),
		(1021, 'Uri', 'Ulrich', '22', '02102910011', 'Frozen'),
		(1022, 'Vanessa', 'Valentine', '29', '02102910012', 'Butchery'),
		(1023, 'Walter', 'Winston', '25', '02102910013', 'Checkouts'),
		(1024, 'Xavier', 'Xena', '32', '02102910014', 'Produce'),
		(1025, 'Yvette', 'York', '27', '02102910015', 'Online'),
		(1026, 'Zachary', 'Zalanski', '33', '02102910016', 'Butchery'),
		(1027, 'Amy Rose', 'Anderson', '37', '02102910017', 'Online'),
		(1028, 'Pierre', 'Rodney', '29', '02102910018', 'Deli'),
		(1029, 'Isaac', 'Wales', '22', '02102910019', 'Frozen'),
		(1030, 'Lachlan', 'Smith', '31', '02102910020', 'Grocery');

--Select table - all or specific --

SELECT * FROM GoodStoreEmployees

SELECT WorkerFName FROM GoodStoreEmployees

SELECT * FROM GoodStoreEmployees
WHERE WorkerDepartment = 'Checkouts';

SELECT * FROM GoodStoreEmployees
ORDER BY WorkerDepartment ASC;

SELECT * FROM GoodStoreEmployees
WHERE WorkerAge = '26';

SELECT * FROM GoodStoreEmployees
WHERE WorkerDepartment = 'Frozen' OR WorkerLName = 'Smith'
ORDER BY WorkerLName ASC;

--Modify/Update Data--
Update GoodStoreEmployees
SET WorkerDepartment = 'Chill'
WHERE WorkerFName = 'Thomas'

--MAX, MIN, AVG---
SELECT MIN(WorkerID)
FROM GoodStoreEmployees

SELECT MAX(WorkerPhone)
FROM GoodStoreEmployees

SELECT AVG(WorkerID)
FROM GoodStoreEmployees

--AND--
SELECT * FROM GoodStoreEmployees
WHERE WorkerAge >= 30 AND WorkerDepartment = 'Grocery'

--NOT--
SELECT * FROM GoodStoreEmployees
WHERE NOT WorkerDepartment = 'Checkouts';

--LIKE--
SELECT * FROM GoodStoreEmployees
WHERE WorkerFName LIKE 'a%' OR WorkerLName LIKE 's%';

--Drop Table--
DROP TABLE GoodStoreEmployees