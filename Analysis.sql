-- THE DATA USED FOR THIS QUERY IS FROM KAGGLES AND IT CONTAINS THE TOP 5O BEST SELLING BOOKS FROM 2009-2020

use amazon_bestsellers;

SELECT 
    *
FROM
    amazon_bestsellers;

-- 1) Author with the highest number of best selling books
SELECT author,COUNT(name) as 'Number of Best Selling Books'
FROM amazon_bestsellers
GROUP BY author
ORDER BY count(name) desc
LIMIT 1;

-- Jeff Kinney has the highest with 13 books


-- 2) Most Expensive Best selling Book on Amazon
SELECT name, price
FROM amazon_bestsellers
ORDER BY price DESC
LIMIT 1;

-- The Most Expensive Best selling Book is "Diagnostic and Statistical Manual of Mental Disorders, 5th Edition: DSM-5" which costs $105


-- 3) Average price of the best selling books
SELECT AVG(price) as Average_price
FROM amazon_bestsellers

-- The Average price of the books is $12.92


-- 4) What genre sold the most
SELECT genre, COUNT(genre) as count
FROM amazon_bestsellers
GROUP BY genre

-- There are 337 Non-fiction books and 263 Fiction books


-- 5) Average price of both genre

