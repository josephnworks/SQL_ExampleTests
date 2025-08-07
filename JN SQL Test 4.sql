Use JN_Test

--Create Table for List 4: MLBB Heroes--
Create Table MLBB_Heroes_List
(
HeroID INT PRIMARY KEY,
HeroName varchar(20),
HeroRole varchar(20),
HeroLaneRec varchar(20),
Year INT
)

--Insert data into table--
Insert Into MLBB_Heroes_List(HeroID, HeroName, HeroRole, HeroLaneRec, Year)
Values (1, 'Miya', 'Marksman', 'Gold', 2016),
		(2, 'Balmond', 'Fighter', 'Jungle', 2016),
		(3, 'Saber', 'Assassin', 'Jungle', 2016),
		(4, 'Alice', 'Mage', 'EXP', 2016),
		(5, 'Nana', 'Mage', 'Mid', 2016),
		(6, 'Tigreal', 'Tank', 'Roam', 2016),
		(7, 'Alucard', 'Fighter', 'Jungle', 2016),
		(8, 'Karina', 'Assassin', 'Jungle', 2016),
		(9, 'Akai', 'Tank', 'Roam', 2016),
		(10, 'Franco', 'Tank', 'Roam', 2016),
		(11, 'Bane', 'Fighter', 'EXP', 2016),
		(12, 'Bruno', 'Marksman', 'Gold', 2016),
		(13, 'Clint', 'Marksman', 'Gold', 2016),
		(14, 'Rafaela', 'Support', 'Roam', 2016),
		(15, 'Eudora', 'Mage', 'Mid', 2016),
		(16, 'Zilong', 'Fighter', 'EXP', 2016),
		(17, 'Fanny', 'Assassin', 'Jungle', 2016),
		(18, 'Layla', 'Marksman', 'Gold', 2016),
		(19, 'Minotaur', 'Tank', 'Roam', 2016),
		(20, 'Lolita', 'Support', 'Roam', 2016),
		(21, 'Hayabusa', 'Assassin', 'Jungle', 2016),
		(22, 'Freya', 'Fighter', 'EXP', 2016),
		(23, 'Gord', 'Mage', 'Mid', 2016),
		(24, 'Natalia', 'Assassin', 'Roam', 2016),
		(25, 'Kagura', 'Mage', 'Mid', 2016),
		(26, 'Chou', 'Fighter', 'EXP', 2016),
		(27, 'Sun', 'Fighter', 'EXP', 2016),
		(28, 'Alpha', 'Fighter', 'Jungle', 2017),
		(29, 'Ruby', 'Fighter', 'EXP', 2017),
		(30, 'Yi Sun Shin', 'Marksman', 'Jungle', 2017),
		(31, 'Moskov', 'Marksman', 'Gold', 2017),
		(32, 'Johnson', 'Tank', 'Roam', 2017),
		(33, 'Cyclops', 'Mage', 'Mid', 2017),
		(34, 'Estes', 'Support', 'Roam', 2017),
		(35, 'Hilda', 'Fighter', 'EXP', 2017),
		(36, 'Aurora', 'Mage', 'Mid', 2017),
		(37, 'Lapu Lapu', 'Fighter', 'EXP', 2017),
		(38, 'Vexana', 'Mage', 'Mid', 2017),
		(39, 'Roger', 'Fighter', 'Jungle', 2017),
		(40, 'Karrie', 'Marksman', 'Gold', 2017),
		(41, 'Gatotkaca', 'Tank', 'Roam', 2017),
		(42, 'Harley', 'Mage', 'Jungle', 2017),
		(43, 'Irithel', 'Marksman', 'Gold', 2017),
		(44, 'Grock', 'Tank', 'Roam', 2017),
		(45, 'Argus', 'Fighter', 'EXP', 2017),
		(46, 'Odette', 'Mage', 'Mid', 2017),
		(47, 'Lancelot', 'Assassin', 'Jungle', 2017),
		(48, 'Diggie', 'Support', 'Roam', 2017),
		(49, 'Hylos', 'Tank', 'Roam', 2017),
		(50, 'Zhask', 'Mage', 'Mid', 2017),
		(53, 'Lesley', 'Marksman', 'Gold', 2018),
		(57, 'Valir', 'Mage', 'Mid', 2018),
		(60, 'Hanabi', 'Marksman', 'Gold', 2018),
		(69, 'Hanzo', 'Assassin', 'Jungle', 2018),
		(70, 'Belerick', 'Tank', 'Roam', 2018),
		(74, 'Minsitthar', 'Fighter', 'EXP', 2018),
		(77, 'Badang', 'Fighter', 'EXP', 2019),
		(79, 'Granger', 'Marksman', 'Jungle', 2019),
		(85, 'Dyrroth', 'Fighter', 'EXP', 2019),
		(90, 'Silvanna', 'Fighter', 'EXP', 2019),
		(91, 'Cecelion', 'Mage', 'Mid', 2020),
		(98, 'Khaleed', 'Fighter', 'EXP', 2020),
		(104, 'Gloo', 'Tank', 'EXP', 2021),
		(107, 'Natan', 'Marksman', 'Gold', 2021),
		(109, 'Aamon', 'Assassin', 'Jungle', 2021),
		(111, 'Edith', 'Tank', 'EXP', 2021),
		(116, 'Julian', 'Assassin', 'Jungle', 2022),
		(117, 'Fredrinn', 'Fighter', 'Jungle', 2022),
		(121, 'Ixia', 'Marksman', 'Gold', 2023),
		(122, 'Nolan', 'Assassin', 'Jungle', 2023),
		(127, 'Lukas', 'Fighter', 'EXP', 2024);

--Select table, all or specific--
Select * From MLBB_Heroes_List;

Select * From MLBB_Heroes_List
Where HeroLaneRec = 'EXP';

Select * From MLBB_Heroes_List
Order By HeroName ASC;

Select * From MLBB_Heroes_List
Where Year Between 2020 and 2024;

Select * From MLBB_Heroes_List
Where HeroRole = 'Assassin' and HeroLaneRec = 'Roam';

Select * from MLBB_Heroes_List
Where HeroRole = 'Marksman' or Year = '2018'
Order By HeroName ASC;

Select Avg(Year) as 'Average_Year' from MLBB_Heroes_List;

Select * From MLBB_Heroes_List
Where HeroName Like 'l%'
Order By HeroName ASC;

Select Top 25 percent * from MLBB_Heroes_List
Where Year = '2016';

--Views Function--

Create View View_1 As
Select HeroID, HeroName, HeroRole
From MLBB_Heroes_List
Where Year Between 2018 and 2024;

Select * From View_1;
