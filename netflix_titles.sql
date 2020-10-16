USE tugas_import;
CREATE TABLE netflix(
show_id INT(8),
tipe VARCHAR(8),
title VARCHAR (25),
director VARCHAR (100),
cast_artist TEXT,
country VARCHAR (50),
date_added VARCHAR (20),
release_year YEAR,
rating VARCHAR (6),
duration VARCHAR (15),
list_in TEXT,
descriptions TEXT
);


LOAD DATA INFILE '/xampp/mysql/data/netflix_titles.csv'
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM netflix WHERE duration LIKE '%90 min%';
SELECT * FROM netflix WHERE country LIKE '%thailand%';
SELECT * FROM netflix WHERE release_year>2015;