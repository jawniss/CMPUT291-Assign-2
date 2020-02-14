.print Question 5 - johnas

SELECT S1.sid, S1.lister, S1.pid, bids.bid
FROM sales S1, bids
  LEFT OUTER JOIN sales S2 ON S1.pid=S2.pid
  GROUP BY S1.sid
HAVING S1.sid=bids.sid
AND bids.amount < 2 * (SELECT bids.amount
FROM bids
WHERE bids.sid=S2.sid);


--this isn't right - read the question again


-- not done
-- underavlued if highest bid of s1 is less than
-- half highest bid on s2
