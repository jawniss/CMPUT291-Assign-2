.print Question 3 - johnas

SELECT S.sid, S.lister
FROM sales S, bids B
WHERE DATE('now', '+3 day') >= DATE(S.edate)
  AND DATE(S.edate) >= DATE('now')
  AND S.sid=B.sid
  AND B.amount<S.rprice;
