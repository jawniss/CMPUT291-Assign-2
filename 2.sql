.print Question 2 - johnas

SELECT S.sid, S.lister, S.cond, S.rprice
FROM sales S, bids B, users U
WHERE S.descr LIKE '%ticket%'
AND S.sid=B.sid
AND B.bidder=U.email
AND U.city LIKE '%Edmonton%'
OR S.descr LIKE '%voucher%'
AND S.sid=B.sid
AND B.bidder=U.email
AND U.city LIKE '%Edmonton%';

-- possibly done
