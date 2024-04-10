--UCL_TEAMS TABLE------------------------------------------------------------------------------------------

-- Code for creating TABLE and adding columns
CREATE TABLE ucl_teams (
    Team_ID INT PRIMARY KEY,
    Team_Name VARCHAR(100) NOT NULL,
    Country VARCHAR(100),
    League VARCHAR(100),
    CL_Finals_Played INT,
    CL_Wins INT,
    Goals_Scored INT,
    Goals_Taken INT
);

-- Code for adding teams and stats to TABLE
INSERT INTO ucl_teams (Team_ID, Team_Name, Country, League, CL_Finals_Played, CL_Wins, Goals_Scored, Goals_Taken)
VALUES
(1, 'Napoli', 'Italy', 'Serie A', 0, 0, 20, 6),
(2, 'Liverpool', 'England', 'Premier League', 9, 6 ,17, 6),
(3, 'Ajax', 'Netherlands', 'Eredivisie', 6, 4, 11, 16),
(4, 'Rangers', 'Scotland', 'Premiership', 0, 0, 2, 22),
(5, 'FC Porto', 'Portugal', 'Taca de Portugal', 2, 2, 12, 7),
(6, 'Club Brugge', 'Belgium', 'First Division A', 1, 0, 7, 4),
(7, 'Leverkusen', 'Germany', 'Bundesliga', 1, 0, 4, 8),
(8, 'Atletico de Madrid', 'Spain', 'La Liga', 3, 0, 5, 9),
(9, 'Bayern Munchen', 'Germany', 'Bundesliga', 11, 6, 18, 2),
(10, 'Inter Milan', 'Italy', 'Serie A', 6, 3, 10, 7),
(11, 'Barcelona', 'Spain', 'La Liga', 8, 5, 12, 12),
(12, 'Viktoria Pizen', 'Czech Republic', 'Czech Liga', 0, 0, 5, 24),
(13, 'Tottenham Spurs', 'England', 'Premier League', 1, 0, 8, 6),
(14, 'Frankfurt', 'Germany', 'Bundesliga', 1, 0, 7, 8),
(15, 'Sporting CP', 'Portugal', 'Taca de Portugal', 0, 0, 8, 9),
(16, 'Marseille', 'France', 'Ligue 1', 2, 1, 8, 8),
(17, 'Chelsea', 'England', 'Premier League', 3, 2, 10, 4),
(18, 'AC Milan', 'Italy', 'Serie A', 11, 7, 12, 7),
(19, 'Salzburg', 'Austria', 'Bundesliga Austria', 0, 0, 5, 9),
(20, 'Dinamo Zagreb', 'Croatia', 'HNL', 0, 0, 4, 11),
(21, 'Real Madrid', 'Spain', 'La Liga', 17, 14, 15, 6),
(22, 'RB Leipzig', 'Germany', 'Bundesliga', 0, 0, 13, 9),
(23, 'Shakhtar Donetsk', 'Ukraine', 'Ukraine PL', 0, 0, 8, 10),
(24, 'Celtic', 'Scotland', 'Premiership', 2, 1, 4, 15),
(25, 'Manchester City', 'England', 'Premier League', 2, 1, 14, 2),
(26, 'Borussia Dortmund', 'Germany', 'Bundesliga', 2, 1, 10, 5),
(27, 'Sevilla', 'Spain', 'La Liga', 0, 0, 6, 12),
(28, 'FC Kobenhavn', 'Denmark', 'Superligaen', 0, 0, 1, 12),
(29, 'Benfica', 'Portugal', 'Taca de Portugal', 7, 2, 16, 7),
(30, 'PSG', 'France', 'Ligue 1', 1, 0, 16, 7),
(31, 'Juventus', 'Italy', 'Serie A', 9, 2, 9, 13),
(32, 'Maccabi Haifa', 'Israel', 'Ligat HaAl', 0, 0, 7, 21);

-- Code to add one more column called Knockouts
ALTER TABLE ucl_teams
ADD Knockouts CHAR(3);

-- Code adding whether the team went to knockout stage or not by utilizing Team_ID column
UPDATE ucl_teams
SET Knockouts = 'yes'
WHERE Team_ID IN (1, 2, 5, 6, 9, 10, 13, 14, 17, 18, 21, 22, 25, 26, 29, 30); 

-- Code adding 'no' for rest of Teams that didn't go to Knockout Stage
UPDATE ucl_teams
SET Knockouts = 'no'
WHERE Team_ID IN (3, 4, 7, 8, 11, 12, 15, 16, 19, 20, 23, 24, 27, 28, 31, 32);

-- UCL_MVPS TABLE------------------------------------------------------------------------------------------

-- Code to create table for UEFA Champions League MVPS of 2023
CREATE TABLE ucl_mvps (
	Player_Name VARCHAR(100) NOT NULL,
	Team VARCHAR(100),
	Country_Of_Origin VARCHAR(100),
	Goals INT,
	Assists INT,
	G_A INT
);

-- Code to add MVP Players into table with a G/A of at least 5
INSERT INTO ucl_mvps (Player_Name, Team, Country_Of_Origin, Goals, Assists, G_A)
VALUES
('Erling Haaland', 'Manchester City', 'Norway', 12, 1, 13),
('Vinicius Junior', 'Real Madrid', 'Brazil', 7, 5, 12),
('Mohamed Salah', 'Liverpool', 'Egypt', 8, 2, 10),
('Kylian Mbappe', 'PSG', 'France', 7, 3, 10),
('Joao Mario', 'Benfica', 'Portugal', 6, 2, 8),
('Lionel Messi', 'PSG', 'Argentina', 4, 4, 8),
('Kevin de Bruyne', 'Manchester City', 'Belgium', 2, 6, 8),
('Mehdi Taremi', 'FC Porto', 'Iran', 5, 2, 7),
('Olivier Giroud', 'AC Milan', 'France', 5, 2, 7),
('Rodrygo', 'Real Madrid', 'Brazil', 5, 2, 7),
('Giacomo Raspadori', 'Napoli', 'Italy', 4, 3, 7),
('Khvicha Kvaratskhelia', 'Napoli', 'Georgia', 2, 4, 6),
('Piotr Zielinski', 'Napoli', 'Poland', 4, 2, 6),
('Rafa Silva', 'Benfica', 'Portugal', 5, 1, 6),
('Lautaro Martinez', 'Inter Milan', 'Argentina', 3, 3, 6),
('Alex Grimaldo', 'Benfica', 'Spain', 2, 4, 6),
('Leon Goretzka', 'Bayern Munchen', 'Germany', 2, 4, 6),
('Mohammed Kudus', 'Ajax', 'Ghana', 4, 2, 6),
('Karim Benzema', 'Real Madrid', 'France', 4, 1, 5),
('Riyad Mahrez', 'Manchester City', 'Algeria', 3, 2, 5),
('Victor Osimhen', 'Napoli', 'Nigeria', 5, 0, 5),
('Robert Lewandowski', 'Barcelona', 'Poland', 5, 0, 5),
('Leroy Sane', 'Bayern Munchen', 'Germany', 4, 1, 5),
('Federico Valverde', 'Real Madrid', 'Uruguay', 2, 3, 5),
('Federico Dimarco', 'Inter Milan', 'Italy', 0, 5, 5),
('Edin Dzeko', 'Inter Milan', 'Bosnia-Herzegovina', 4, 1, 5),
('Julian Alvarez', 'Manchester City', 'Argentina', 3, 2, 5),
('Mykhaylo Mudryk', 'Shakhtar Donetsk', 'Ukraine', 3, 2, 5),
('Jude Bellingham', 'Borussia Dortmund', 'England', 4, 1, 5),
('Serge Gnabry', 'Bayern Munchen', 'Germany', 2, 3, 5);

--KNOCKOUT_STAGE_GAMES-------------------------------------------------------------------------------------------

--Code to create knockout games table

CREATE TABLE ucl_knockouts(
	Knockout_Stage VARCHAR(100) NOT NULL,
	Team_1 VARCHAR(100),
	Team_2 VARCHAR(100),
	Game_1_Team_1_Score INT,
	Game_1_Team_2_Score INT,
	Game_2_Team_1_Score INT,
	Game_2_Team_2_Score INT,
	Aggregate_Team_1_Score INT,
	Aggregate_Team_2_Score INT,
	Winner VARCHAR(100)
);
	
--Code to insert data for all knockout games from Round of 16 until Final
INSERT INTO ucl_knockouts (Knockout_Stage, Team_1, Team_2, Game_1_Team_1_Score, Game_1_Team_2_Score, Game_2_Team_1_Score, Game_2_Team_2_Score, Aggregate_Team_1_Score, Aggregate_Team_2_Score, Winner)
VALUES
('Round of 16', 'Liverpool', 'Real Madrid', 2, 5, 0, 1, 2, 6, 'Real Madrid'),
('Round of 16', 'Borussia Dortmund', 'Chelsea', 1, 0, 0, 2, 1, 2, 'Chelsea'),
('Round of 16', 'RB Leipzig', 'Manchester City', 1, 1, 0, 7, 1, 8, 'Manchester City'),
('Round of 16', 'PSG', 'Bayern Munchen', 0, 1, 0, 2, 0, 3, 'Bayern Munchen'),
('Round of 16', 'AC Milan', 'Tottenham Spurs', 1, 0, 0, 0, 1, 0, 'AC Milan'),
('Round of 16', 'Frankfurt', 'Napoli', 0, 2, 0, 3, 0, 5, 'Napoli'),
('Round of 16', 'Club Brugge', 'Benfica', 0, 2, 1, 5, 1, 7, 'Benfica'),
('Round of 16', 'Inter Milan', 'FC Porto', 1, 0, 0, 0, 1, 0, 'Inter Milan'),
('Quarter Finals', 'Real Madrid', 'Chelsea', 2, 0, 2, 0, 4, 0, 'Real Madrid'),
('Quarter Finals', 'Manchester City', 'Bayern Munchen', 3, 0, 1, 1, 4, 1, 'Manchester City'),
('Quarter Finals', 'AC Milan', 'Napoli', 1, 0, 1, 1, 2, 1, 'AC Milan'),
('Quarter Finals', 'Benfica', 'Inter Milan', 0, 2, 3, 3, 3, 5, 'Inter Milan'),
('Semifinals', 'Real Madrid', 'Manchester City', 1, 1, 0, 4, 1, 5, 'Manchester City'),
('Semifinals', 'AC Milan', 'Inter Milan', 0, 2, 0, 1, 0, 3, 'Inter Milan'),
('Final', 'Manchester City', 'Inter Milan', 1, 0, NULL, NULL, 1, 0, 'Manchester City');
