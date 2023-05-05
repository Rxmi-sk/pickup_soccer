-- Use the database
DROP SCHEMA IF EXISTS pickup_games;
CREATE SCHEMA pickup_games;
USE pickup_games;


-- Create the Field table
CREATE TABLE IF NOT EXISTS Fields (
   Name VARCHAR(255) PRIMARY KEY,
   Address VARCHAR(255),
   Turf BOOL,
   Outdoor BOOL
);
-- Create the Employee table
CREATE TABLE IF NOT EXISTS Employees (
   SIN INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Full_name VARCHAR(255),
   Address VARCHAR(255),
   Position VARCHAR(255) CHECK (Position in ("Referee"))
);

-- Create the Games table
CREATE TABLE IF NOT EXISTS Games (
   Game_ID INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Date DATE,
   Time VARCHAR(255),
   Price DECIMAL(10,2),
   Length_of_Game INT,
   Field_Name VARCHAR(255),
   Employee_SIN INT,
   FOREIGN KEY (Employee_SIN) REFERENCES Employees(SIN) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (Field_Name) REFERENCES Fields(Name) ON UPDATE CASCADE ON DELETE CASCADE
);


-- Create the Player table
CREATE TABLE IF NOT EXISTS Players (
   Player_ID INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Full_name VARCHAR(255),
   Address VARCHAR(255),
   SIN INT,
   Registration_Date DATE
);

-- Create the Registration table
 CREATE TABLE IF NOT EXISTS Registration (
   Registration_ID INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Game_ID INT,
   Player_ID INT,
   Price DECIMAL(10,2),
   FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID) ON UPDATE CASCADE ON DELETE CASCADE
 );
 
-- Create the Payment table 
CREATE TABLE IF NOT EXISTS Payment (
   Payment_ID INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Payment_Type VARCHAR(255) CHECK (Payment_Type in ("cash", "visa", "mastercard")),
   Player_ID INT,
   Registration_ID INT,
   Game_ID INT,
   Date_Of_Payment DATE,
   Payment_Status VARCHAR(255),
   Price DECIMAL(10,2),
   FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (Registration_ID) REFERENCES Registration(Registration_ID) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

 
 -- Create the Archive table
 CREATE TABLE IF NOT EXISTS Archive (
   Registration_ID INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
   Game_ID INT,
   Player_ID INT,
   Price DECIMAL(10,2),
   FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID)
 );

ALTER TABLE Employees AUTO_INCREMENT = 100000000;
