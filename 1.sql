.print Question 1 - johnas

SELECT U.email, U.name
FROM users U, sales S, bids B
WHERE S.sid=B.sid
AND S.lister=B.bidder
AND S.lister=U.email
AND B.bidder=U.email;


-- possibly done
