USE JN_Test

--Create Table for List 3: Team Goldstar MLBB Esport--
CREATE TABLE GOLDSTAR_SQUAD_Esport_MLBB
(
MemberID INT PRIMARY KEY,
MemberUsername varchar(50),
MemberFName varchar(50),
MemberLName varchar(50),
MemberNationality varchar(50),
MemberProminentLane varchar(50)
)

--insert data to table--
INSERT INTO GOLDSTAR_SQUAD_Esport_MLBB(MemberID, MemberUsername, MemberFName, MemberLName, MemberNationality, MemberProminentLane)
VALUES (1, 'roxyboy91', 'Fred', 'Boyd', 'New Zealand', 'Jungle'),
		(2, 'kyllastyle', 'Andrew', 'Holgate', 'New Zealand', 'Mid Lane'),
		(3, 'CampbellRocks', 'Campbell', 'Williams', 'New Zealand', 'EXP'),
		(4, 'kahinu50', 'Nikora', 'Kahinu', 'Samoa', 'Roam'),
		(5, 'greenangel', 'Carl', 'Latu', 'Tonga', 'EXP'),
		(6, 'Jwarrior', 'Jackie', 'Ngata', 'New Zealand', 'Roam'),
		(7, 'redeye2005', 'Akira', 'Hidaka', 'Japan', 'Jungle'),
		(8, 'walkzzz', 'Piripi', 'Walker', 'New Zealand', 'Mid Lane'),
		(9, 'YallaOnly', 'Christopher', 'Carter', 'New Zealand', 'Gold'),
		(10,'pukupuku', 'Iese', 'Gilchrist', 'Samoa', 'Gold'),
		(11, '25blaster', 'Lopati', 'Davis', 'Samoa', 'Mid Lane'),
		(12, 'onpoint101', 'Wesley', 'Smith', 'New Zealand', 'EXP');

--Select table - all or specific --
SELECT * FROM GOLDSTAR_SQUAD_Esport_MLBB

SELECT MemberUsername, MemberNationality from GOLDSTAR_SQUAD_Esport_MLBB

SELECT * FROM GOLDSTAR_SQUAD_Esport_MLBB
ORDER BY MemberNationality ASC;

-- ////////// --

--Create Table for List 3: Goldstar Squad Result Table--

CREATE TABLE GOLDSTAR_SQUAD_Result
(
Year_ DATE,
Championship varchar(250),
HostCountry varchar(50),
Result varchar(50)
)

INSERT INTO GOLDSTAR_SQUAD_Result(Year_, Championship, HostCountry,Result)
VALUES
('2024-06-06', '2024 Auckland MLBB Mid-Season Open', 'New Zealand', 'Semi Finals'),
('2024-08-19', '2024 Eastern Bays MLBB Open', 'New Zealand', 'Champions'),
('2025-02-26', 'MSC 2025 - Oceania Wildcard Qualifiers', 'Australia', 'Runner Up'),
('2025-06-10', '2024 Auckland MLBB Mid-Season Open', 'New Zealand', 'Runner Up')
;

--Select table - all or specific --
SELECT * FROM GOLDSTAR_SQUAD_Result

Select * FROM GOLDSTAR_SQUAD_Result
WHERE Year_ = '2025-02-26'

-- ////////// --

--Union--
SELECT MemberNationality, MemberUsername FROM GOLDSTAR_SQUAD_Esport_MLBB
UNION
SELECT HostCountry, Championship FROM GOLDSTAR_SQUAD_Result;