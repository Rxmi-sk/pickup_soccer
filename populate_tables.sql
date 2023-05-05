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
        
INSERT INTO Games (Date, Time, Price, Length_of_Game, Field_Name)
VALUES ()

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
