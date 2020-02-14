-- SELECT sales.sid
-- FROM sales
-- LEFT OUTER JOIN reviews ON sales.lister=reviews.reviewee
-- LEFT OUTER JOIN reviews ON
-- -- WHERE sales.descr has 'PS4'
-- GROUP BY sales.sid
-- HAVING COUNT(sales.lister=reviews.reviewee) >= 3;
--
-- -- only for sales w/ more than 3 reviews
--
--
-- -- pretty sure/my interportation is that only from sale
-- -- posters that have a review on th eperson, not
-- -- product reviewss
-- -- rn it's just doing numb of rows >= 3
--
--
--
--
-- SELECT sales.sid
-- FROM sales
-- LEFT OUTER JOIN reviews ON sales.lister=reviews.reviewee
-- -- WHERE sales.descr has 'PS4'
-- GROUP BY sales.sid
-- HAVING COUNT(sales.lister=reviews.reviewee) >= 3
-- AND AVG(reviews.rating)>4;
--
-- -- GOOD FOR RATING

.print Question 6 - johnas

SELECT sales.sid
FROM sales
LEFT OUTER JOIN reviews ON sales.lister=reviews.reviewee
GROUP BY sales.sid
HAVING COUNT(sales.lister=reviews.reviewee) >= 3
AND AVG(reviews.rating)>4
AND sales.descr LIKE '%PS4%'
AND sales.descr LIKE '%pS4%'
AND sales.descr LIKE '%Ps4%'
AND sales.descr LIKE '%ps4%';

-- PRETTY SURE WORKING, 6 DONE
