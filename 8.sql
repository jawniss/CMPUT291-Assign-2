.print Question 8 - johnas

SELECT users.email,
  AVG(reviews.rating)
FROM users
LEFT OUTER JOIN reviews ON users.email=reviews.reviewee
GROUP BY users.name
HAVING COUNT(users.email=reviews.reviewee) >= 3
ORDER BY AVG(reviews.rating) DESC
LIMIT 5;

-- I think this is working
