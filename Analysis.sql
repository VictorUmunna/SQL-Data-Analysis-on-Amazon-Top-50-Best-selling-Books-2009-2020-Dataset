-- THE DATA USED FOR THIS QUERY IS FROM KAGGLES AND IT CONTAINS THE TOP 5O BEST SELLING BOOKS FROM 2009-2020


-- 1) Author with the highest number of best selling books?
SELECT author,COUNT(name) as 'Number of Best Selling Books'
FROM amazon_bestsellers
GROUP BY author
ORDER BY count(name) desc
LIMIT 1;

-- Jeff Kinney has the highest with 13 books


-- 2) The Average price of Jeff Kinney books
SELECT ROUND(AVG(price), 2)
FROM amazon_bestsellers
WHERE author = "Jeff Kinney"

-- Jeff Kinney books cost an average of $9.08


-- 3) Most Expensive Best selling Book on Amazon?
SELECT name, price
FROM amazon_bestsellers
ORDER BY price DESC
LIMIT 1;

-- The Most Expensive Best selling Book is "Diagnostic and Statistical Manual of Mental Disorders, 5th Edition: DSM-5" which costs $105


-- 4) Average price of the best selling books?
SELECT AVG(price) as Average_price
FROM amazon_bestsellers

-- The Average price of the books is $12.92


-- 5) What genre sold the most?
SELECT genre, COUNT(genre) as count
FROM amazon_bestsellers
GROUP BY genre

-- There are 337 Non-fiction books and 263 Fiction books


-- 6) Average price of both genre?
SELECT genre, ROUND(AVG(price), 1) as Average_Price
FROM amazon_bestsellers
GROUP BY genre

-- Non-Fiction is $14.7 and Fiction is 10.6 dollars


-- 7) Overall Best Selling book?
SELECT name, COUNT(name) as number
FROM amazon_bestsellers
GROUP BY name
ORDER BY COUNT(name) DESC
LIMIT 1;

-- The Overall Best Selling Book is "Publication Manual of the American Psychological Association, 6th Edition"


-- 8) Top Rated Book
SELECT name, user_rating
FROM amazon_bestsellers
ORDER BY user_rating DESC

-- There are 61 books with 4.9 rating


-- 9)Least Rated Book
SELECT name, user_rating
FROM amazon_bestsellers
ORDER BY user_rating 
LIMIT 1
-- "The Casual Vacancy" is the least rated with a rating of 3.3


-- 10) Average User Ratings of the best sellers
SELECT ROUND(AVG(user_rating),2)
FROM amazon_bestsellers

-- The average rating of all the books is 4.63


-- 11) The Book with the highest number of reviews
SELECT name, reviews
FROM amazon_bestsellers
ORDER BY reviews desc
LIMIT 1

-- "Where the Crawdads Sing" has the highest with 120727 reviews


-- 12) The Rating of the book with the highest number of reviews
SELECT name, reviews, user_rating
FROM amazon_bestsellers
WHERE reviews = 120727

-- The book has a user rating of 4.8


-- 13) The Book with the lowest number of reviews
SELECT name, reviews
FROM amazon_bestsellers
ORDER BY reviews
LIMIT 1

-- "Divine Soul Mind Body Healing and Transmission System" has the lowest with 37 reviews


-- 14) The Rating of the book with the lowest number of reviews
SELECT name, reviews, user_rating
FROM amazon_bestsellers
WHERE reviews = 37

-- The book has a user rating of 4.6


-- 15) The Average number of Reviews
SELECT AVG(reviews)
FROM amazon_bestsellers

-- The average number of reviews is 13941.73