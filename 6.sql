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
