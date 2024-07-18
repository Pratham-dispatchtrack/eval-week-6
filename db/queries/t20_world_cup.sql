USE t20_cup;

CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    country VARCHAR(255) NOT NULL,
    founded YEAR
);

INSERT INTO teams (name, country, founded) VALUES
                                                    ('Team A', 'USA', 1901),
                                                    ('Team B', 'UK', 1902),
                                                    ('Team C', 'Spain', 1920),
                                                    ('Team D', 'Germany', 1987),
                                                    ('Team E', 'Italy', 1905),
                                                    ('Team F', 'France', 1999),
                                                    ('Team G', 'Brazil', 1910),
                                                    ('Team H', 'Argentina', 1913),
                                                    ('Team I', 'Mexico', 1922),
                                                    ('Team J', 'Netherlands', 1908);

SELECT * FROM teams;

SELECT * FROM teams WHERE name = 'Team A';

SELECT * FROM teams WHERE founded < 1950;

INSERT INTO teams (name, country, founded) VALUES ('New Team', 'Country', 2020);

UPDATE teams SET country = ' India' WHERE name = 'Team B';

DELETE FROM teams WHERE name = 'New Team';
