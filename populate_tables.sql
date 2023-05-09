USE pickup_games;

-- Populate Fields
INSERT INTO Fields
VALUES ("Richcraft Soccer Field Kanata", "4101 Innovation Drive", TRUE, TRUE),
	("Immaculata High School Soccer Field", "140 Main St", TRUE, TRUE),
	("Walter Baker Soccer Field", "1560 Maple Grove Road,", False, TRUE),
	("W.C. Bowes Soccer Field", "1251 Halton Terrace", False, TRUE),
	("Insmill Park Soccer Field", "67 Insmill Crescent", FALSE, TRUE),
	("Ben Franklin Dome Nepean", "191 Knoxdale Road", TRUE, FALSE),
	("Sooners Megadome", "5315 Abbott Street", TRUE, FALSE),
	("Kanata Bell Sensplex", "1565 Maple Grove Road", TRUE, FALSE),
	("OZ Dome", "221 Westbrook Road", TRUE, FALSE),
	("Thunderbird Sports Centre Dome", "1927 Richardson Side Road", TRUE, FALSE);

-- Populate Employees   
INSERT INTO Employees (Full_Name, Address, Position)
VALUES ("Andrew Saxx", "773 Bird Street", "Referee"),
		("Bob Sterling", "3649 Quiet Valley Lane", "Referee"),
        ("Ahmed Kadi", "3981 Fulton Street", "Referee"),
        ("Jeff Abi", "595 Simpson Square", "Referee"),
        ("Rob Fewandowski", "562 Wexford Way", "Referee"),
        ("Hugh Jackson", "4268 Wright Court", "Referee"),
        ("James Bond", "2692 Rollins Road", "Referee"),
        ("Isa Phillips", "956 Polk Street", "Referee"),
        ("Khaled Zeydan", "1679 Marie Street", "Referee"),
        ("Ryan Sacks", "3109 Rockwell Lane", "Referee");
	
-- Populate Games
INSERT INTO Games (Date, Time, Price, Length_of_Game, Field_Name, Employee_SIN)
VALUES 
    ('2023-06-04', '7:00pm', 25.00, 90, 'Richcraft Soccer Field Kanata', 100000000),
    ('2023-06-07', '7:00pm', 35.00, 90, "Immaculata High School Soccer Field", 100000001),
    ('2023-06-10', '7:00pm', 16.00, 90, "Walter Baker Soccer Field", 100000002),
    ('2023-06-11', '7:00pm', 25.00, 90, "W.C. Bowes Soccer Field", 100000003),
    ('2023-06-14', '7:00pm', 24.00, 90, "Insmill Park Soccer Field", 100000004),
    ('2023-06-17', '7:00pm', 19.00, 90, "Ben Franklin Dome Nepean", 100000005),
    ('2023-06-19', '7:00pm', 24.00, 90, "Sooners Megadome", 100000006),
    ('2023-06-22', '7:00pm', 23.00, 90, "Kanata Bell Sensplex", 100000007),
    ('2023-06-27', '7:00pm', 26.00, 90, "OZ Dome", 100000008),
    ('2023-06-29', '7:00pm', 27.00, 90, "Thunderbird Sports Centre Dome", 100000009),
    ('2023-07-02', '7:00pm', 25.00, 90, 'Richcraft Soccer Field Kanata', 100000000),
    ('2023-07-05', '7:00pm', 28.00, 90, "Immaculata High School Soccer Field", 100000001),
    ('2023-07-08', '7:00pm', 25.00, 90, "Walter Baker Soccer Field", 100000002),
    ('2023-07-09', '7:00pm', 36.00, 90, "W.C. Bowes Soccer Field", 100000003),
    ('2023-07-12', '7:00pm', 24.00, 90, "Insmill Park Soccer Field", 100000004),
    ('2023-07-15', '7:00pm', 36.00, 90, "Ben Franklin Dome Nepean", 100000005),
    ('2023-07-17', '7:00pm', 23.00, 90, "Sooners Megadome", 100000006),
    ('2023-07-20', '7:00pm', 20.00, 90, "Kanata Bell Sensplex", 100000007),
    ('2023-07-25', '7:00pm', 23.00, 90, "OZ Dome", 100000008),
    ('2023-07-28', '7:00pm', 27.00, 90, "Thunderbird Sports Centre Dome", 100000009),
    ('2023-07-30', '7:00pm', 29.00, 90, 'Richcraft Soccer Field Kanata', 100000000),
    ('2023-08-02', '7:00pm', 14.00, 90, "Immaculata High School Soccer Field", 100000001),
    ('2023-08-05', '7:00pm', 16.00, 90, "Walter Baker Soccer Field", 100000002),
    ('2023-08-06', '7:00pm', 18.00, 90, "W.C. Bowes Soccer Field", 100000003),
    ('2023-08-09', '7:00pm', 26.00, 90, "Insmill Park Soccer Field", 100000004),
    ('2023-08-12', '7:00pm', 20.00, 90, "Ben Franklin Dome Nepean", 100000005),
    ('2023-08-14', '7:00pm', 21.00, 90, "Sooners Megadome", 100000006),
    ('2023-08-17', '7:00pm', 23.00, 90, "Kanata Bell Sensplex", 100000007),
    ('2023-08-22', '7:00pm', 25.00, 90, "OZ Dome", 100000008),
    ('2023-08-25', '7:00pm', 28.00, 90, "Thunderbird Sports Centre Dome", 100000009);

SELECT * FROM Games

-- Populate Games        
-- INSERT INTO Games (Date, Time, Price, Length_of_Game, Field_Name)
-- VALUES ()

-- INSERT INTO Games (Date, Time, Price, Length_of_Game, Field_Name)
-- SELECT
--  date_add(date_format(date_add(now(), interval floor(rand() * 30) day), '%Y-%m-01'), interval floor(rand() * 30) day) as Date,
--  concat(floor(rand() * 24), ':', lpad(floor(rand() * 4) * 15, 2, '0')) as Time,
--  round(rand() * 50 + 10, 2) as Price,
--  case when rand() > 0.5 then 60 else 90 end as Length_of_Game,
--  Field_Name
-- FROM Fields
-- CROSS JOIN (
--  SELECT 1 AS n UNION SELECT 2 AS n
-- ) AS t
-- WHERE month(date_add(now(), interval floor(rand() * 6) month)) = month(Date)
-- GROUP BY Field_Name, year(Date), month(Date)
-- HAVING COUNT(*) < 2;