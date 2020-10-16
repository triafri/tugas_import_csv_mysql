CREATE DATABASE tugas_import;
USE tugas_import;

CREATE TABLE ramen_ratings(
review INT(6),
brand VARCHAR(50),
variety TEXT,
style VARCHAR(10),
country VARCHAR(30),
stars FLOAT,
top_ten VARCHAR(8) NULL
);

LOAD DATA INFILE '/xampp/mysql/data/ramen-ratings.csv'
INTO TABLE ramen_ratings
FIELDS TERMINATED BY ','
ENCLOSED BY""
LINES TERMINATED BY '\n'
IGNORE 1 ROWS

SELECT * FROM ramen_ratings WHERE stars>4;
SELECT * FROM ramen_ratings WHERE country LIKE '%japan%';
SELECT review, brand, UCASE(variety) AS 'variety', style, country, stars, top_ten FROM ramen_ratings;